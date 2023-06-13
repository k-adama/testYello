import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'adminlogin.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'update.dart';
import 'main.dart';

extension ColorExtension on String {
  toColor18() {
    var hexString = this;
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}

class Dashboard extends StatefulWidget {
  int utilisation = 0;
  final String title;
  Dashboard({Key? key, required this.title, required this.utilisation});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _counter = 0;
  String go = '';
  final pass = TextEditingController();
  String thereponse = "";
  int? counter;

  late SharedPreferences preferences;
  String Snom = "";
  String Sville = "";
  String Snumero = "";
  String Fnom = "";
  String theid = "";
  int Plitte = 0;
  int Pnum = 0;
  int Psymbol = 0;

  //---- Enregistrer un elve ----

  @override
  void initState() {
    super.initState();
    init();
    retrieveCounter();
  }

//  Set Data value ---------
  Future init() async {
    preferences = await SharedPreferences.getInstance();
    String? nom = preferences.getString('nom') ?? '';
    String? ville = preferences.getString('ville') ?? 'no data';
    String? formateur = preferences.getString('formateur') ?? 'no data';
    String? numero = preferences.getString('numero') ?? 'no data';
    int? litteratie = preferences.getInt('litteratie') ?? 0;
    int? numeratie = preferences.getInt('numeratie') ?? 0;
    int? symbol = preferences.getInt('symbol') ?? 0;
    String? id = preferences.getString('id') ?? 'no data';
    CheckConfig();
    GetStudentData(
        id, nom, ville, formateur, numero, litteratie, numeratie, symbol);
  }

  void delInfo() {
    preferences.setString('id', '');
    preferences.setString('nom', '');
    preferences.setString('ville', '');
    preferences.setString('formateur', '');
    preferences.setString('numero', '');
    preferences.setInt('litteratie', 0);
    preferences.setInt('numeratie', 0);
    preferences.setInt('symbol', 0);
    preferences.setInt('utilisation', 0);
    Navigator.pushReplacementNamed(context, '/adminlogin');
  }

  void CheckConfig() {
    //preferences.setString('nom', eleve.text);
    String? nom = preferences.getString('nom') ?? '';
    print(nom);
    if (nom == '') {
      Navigator.pushReplacementNamed(context, '/adminlogin');
    }
  }

  Future senddata() async {
    thereponse = "";
    final response =
        await http.post(Uri.parse("https://s-p4.com/yello/update.php"), body: {
      "id": theid,
      "litteratie": Plitte,
      "symbol": Psymbol,
      "numeratie": Pnum,
    });
  }

  void GetStudentData(String id, String nom, String ville, String formateur,
      String numero, int lit, int numeratie, int symbol) {
    setState(() {
      Snom = nom;
      Sville = ville;
      Snumero = numero;
      Fnom = formateur;
      Plitte = lit;
      Pnum = numeratie;
      Psymbol = symbol;
      theid = id;
    });
  }
//-----------------------

  void GotoMain() {
    Navigator.pushReplacementNamed(context, '/main');
  }

  Future<void> retrieveCounter() async {
    preferences = await SharedPreferences.getInstance();
    this.counter = preferences.getInt('counter');
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        GotoMain();
        return false;
      },
      child: Scaffold(
        //backgroundColor: '#fcca0c'.toColor2(),

        appBar: AppBar(
          centerTitle: true,
          toolbarHeight: 80,
          backgroundColor: '#fcca0c'.toColor18(),
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(
            widget.title + 'Y\'ello Alphabétisation Admin',
            style: TextStyle(
                color: Color(0xff000000), fontStyle: FontStyle.italic),
          ),
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            tooltip: "Close",
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/main');
            },
          ),
        ),

        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(
                width: 300,
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.all(4), //apply padding to all four sides
                child: Text(
                  'Panneau de controle',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              SizedBox(
                width: 300,
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SizedBox(
                    width: 350,
                    height: 300,
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            // Expanded(
                            SizedBox(
                              width: 300,
                              height: 35,
                              child: Text(
                                'Eleve : $Snom ( ID - $theid )',
                                style: TextStyle(
                                    fontSize: 17, color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            // Expanded(
                            SizedBox(
                              width: 300,
                              height: 35,
                              child: Text(
                                'Numero : $Snumero',
                                style: TextStyle(
                                    fontSize: 17, color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            // Expanded(
                            SizedBox(
                              width: 300,
                              height: 35,
                              child: Text(
                                'Ville : $Sville',
                                style: TextStyle(
                                    fontSize: 17, color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            // Expanded(
                            SizedBox(
                              width: 300,
                              height: 35,
                              child: Text(
                                'Formateur : $Fnom',
                                style: TextStyle(
                                    fontSize: 17, color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            // Expanded(
                            SizedBox(
                              width: 300,
                              height: 35,
                              child: Text(
                                'Point en symbole : $Psymbol',
                                style: TextStyle(
                                    fontSize: 17, color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            // Expanded(
                            SizedBox(
                              width: 300,
                              height: 35,
                              child: Text(
                                'Point en numeratie : $Pnum',
                                style: TextStyle(
                                    fontSize: 17, color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            // Expanded(
                            SizedBox(
                              width: 300,
                              height: 35,
                              child: Text(
                                'Point en Litteratie : $Plitte',
                                style: TextStyle(
                                    fontSize: 17, color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            // Expanded(
                            SizedBox(
                              width: 300,
                              height: 30,
                              child: Text(
                                'Utilisation : ${this.counter}',
                                style: TextStyle(
                                    fontSize: 17, color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 300,
                    height: 300,
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            SizedBox(
                              width: 150,
                              height: 60,
                              child: TextButton(
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.indigoAccent,
                                ),
                                onPressed: () {
                                  Navigator.pushReplacementNamed(
                                      context, '/update');
                                },
                                //child: Text('Connexion',style: TextStyle(fontSize: 15,color: CupertinoColors.darkBackgroundGray),),
                                child: const Icon(
                                  Icons.update_outlined,
                                  color: Colors.white,
                                  size: 50,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            SizedBox(
                              width: 80,
                              height: 30,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            SizedBox(
                              width: 150,
                              height: 60,
                              child: TextButton(
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.amber,
                                ),
                                onPressed: () {},
                                //child: Text('Connexion',style: TextStyle(fontSize: 15,color: CupertinoColors.darkBackgroundGray),),
                                child: const Icon(
                                  Icons.upload,
                                  color: Colors.black,
                                  size: 50,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            SizedBox(
                              width: 80,
                              height: 30,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            SizedBox(
                              width: 150,
                              height: 60,
                              child: TextButton(
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.red,
                                ),
                                onPressed: () {},
                                //child: Text('Connexion',style: TextStyle(fontSize: 15,color: CupertinoColors.darkBackgroundGray),),
                                child: const Icon(
                                  Icons.delete_forever_outlined,
                                  color: Colors.white,
                                  size: 50,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            SizedBox(
                              width: 200,
                              height: 50,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 300,
                height: 20,
              ),
              SizedBox(
                width: 300,
                height: 20,
              ),
            ],
          ),
        ),
        // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
