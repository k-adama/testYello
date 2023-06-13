import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';


extension ColorExtension on String {
  toColor5() {
    var hexString = this;
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}

class Resultat extends StatefulWidget {
  const Resultat({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Resultat> createState() => _ResultatState();
}

class _ResultatState extends State<Resultat> {
  late SharedPreferences preferences;

  double numeratie = 0;
  double litteratie = 0;
  String thereponse = "";
  String theid = "";

  @override
  void initState() {
    super.initState();
    init();
    point();
    senddata();
  }

  Future init() async {
    preferences = await SharedPreferences.getInstance();

    String? id = preferences.getString('id') ?? 'no data';
    GetStudentData(id);
  }

  void GetStudentData(String id) {
    setState(() {
      theid = id;
    });
  }

  Future<void> point() async {
    var prefs = await SharedPreferences.getInstance();
    double numeratie1 = prefs.getDouble('numeratie1') ?? 0;
    double numeratie2 = prefs.getDouble('numeratie2') ?? 0;
    double numeratie3 = prefs.getDouble('numeratie3') ?? 0;
    double numeratie4 = prefs.getDouble('numeratie4') ?? 0;
    double litteratie1 = prefs.getDouble('litteratie1') ?? 0;
    double litteratie2 = prefs.getDouble('litteratie2') ?? 0;
    double litteratie3 = prefs.getDouble('litteratie3') ?? 0;
    numeratie = numeratie1 + numeratie2 + numeratie3 + numeratie4;
    litteratie = litteratie1 + litteratie2 + litteratie3;
    print("Point en litteratie to: $litteratie");
    print("Point en numeratie: $numeratie");
    setState(() {});
  }

  //---- Enregistrer un elve ----
  Future senddata() async {
    thereponse = "";
    final response =
        await http.post(Uri.parse("https://s-p4.com/yello/update.php"), body: {
      "id": theid,
      "litt": litteratie.toString(),
      "nume": numeratie.toString(),
    });

    setState(() {
      thereponse = response.body.toString();
      //thereponse = json.decode(response.body);
      if (thereponse == 'ok') {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text(""),
              content: Text("Notes envoyées avec succès !"),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("OK"),
                ),
              ],
            );
          },
        );
      } else {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text(""),
              content: Text(
                  "Vous pouvez cliquer sur le bouton enregistrer pour envoyer les notes"),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("OK"),
                ),
              ],
            );
          },
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 80,
        backgroundColor: '#fcca0c'.toColor5(),
        title: Text(
          widget.title + 'Résultat des évaluations',
          style:
              TextStyle(color: Color(0xff000000), fontStyle: FontStyle.italic),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                SizedBox(
                  width: 100,
                ),
                Text('Littératie :     ',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                Container(
                  width: 180,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: '$litteratie',
                      border: OutlineInputBorder(),
                      enabled: false,
                    ),
                    // Empêche l'édition du champ de texte
                    enableInteractiveSelection: false,
                  ),
                ),
                SizedBox(width: 30), // Espace entre les champs
                Text(
                  'Numératie :       ',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Container(
                  width: 180,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: '$numeratie',
                      border: OutlineInputBorder(),
                      enabled: false,
                    ),
                    // Empêche l'édition du champ de texte
                    enableInteractiveSelection: false,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    Colors.yellow, // Définir la couleur de fond du bouton
              ),
              onPressed: () {
                senddata();
              },
              child: Text('Enregistrer les notes',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20) // Texte à afficher sur le bouton
                  ),
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
