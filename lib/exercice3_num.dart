import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:shared_preferences/shared_preferences.dart';

extension ColorExtension on String {
  toColor18() {
    var hexString = this;
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}

class Exercice3_num extends StatefulWidget {
  const Exercice3_num({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<Exercice3_num> createState() => _Exercice3_numState();
}

class _Exercice3_numState extends State<Exercice3_num> {
  final player = AudioPlayer();
  int _counter = 0;
  double point = 0;
  var debutEvaluation;
  String theAudioPath = '';
  String theQuestion = '';
  late SharedPreferences preferences;

  final _controller = TextEditingController();

//liste de type map avec nos questions, syllables et reponses
  List<Map<String, dynamic>> evaElements = [
    {'question': '10 l=...ml', 'reponse': '10000'},
    {'question': '50 kg=...dg', 'reponse': '500000'},
    {'question': '250 dal=...cl', 'reponse': '2500'},
    {'question': '500 hg =...g(', 'reponse': '5000'},
    {'question': '1 kg =...L', 'reponse': '1'},
  ];

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    debutEvaluation = "false";
    _counter = 0;

    // theQuestion = questions[_counter];
    retrieveCounter();
  }

  Future retrieveCounter() async {
    preferences = await SharedPreferences.getInstance();
  }

  void playSound() {
    player.play(AssetSource(theAudioPath));
  }

  void RandomCounter() {
    setState(() {
      _counter++;
    });
  }

  void CheckChoice(String res) {
    if (_counter < 5) {
      // Vérification de la réponse
      if (_counter < evaElements.length) {
        if (res == evaElements[_counter]["reponse"]) {
          setState(() {
            RandomCounter();
            point = point + 0.2;

            print(".....POINT: ${point.toStringAsFixed(1)}");
            if (_counter == 5) {
              Saveresult();
            }
          });
        } else {
          // Errorpopup(context);
          RandomCounter();
          if (_counter == 5) {
            Saveresult();
          }
        }
      } else {
        Saveresult();
        Navigator.pushReplacementNamed(context, '/menuEva');
      }
    }
  }

  Future Saveresult() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    //sauvegarde du resultat
    prefs.setDouble('numeratie3', point);
     prefs.setBool("num3", true);
    Successpopup();
  }

  //popup anonçant le début de l'évaluation
  void Startpopup(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(
          "Evaluation",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 25,
            color: Colors.red[400],
          ),
        ),
        content: Text(
          "Vous êtes sur le point de commencer votre évaluation",
          textAlign: TextAlign.center,
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              setState(() {
                debutEvaluation = "true";
              });
              playSound();
              Navigator.of(ctx).pop();
            },
            child: Text(
              "COMMENCER",
              style: TextStyle(fontSize: 25),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/menuEva', ModalRoute.withName('/menu'));
            },
            child: Text(
              "Annuler",
              style: TextStyle(fontSize: 25),
            ),
          )
        ],
      ),
    );
  }

  //popup interdissant de faire un retour
  void Alertpopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(
          "Notification",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 25,
            color: Colors.red[400],
          ),
        ),
        content: Text(
          "Vous devez terminer l'evaluation avant de sortir",
          textAlign: TextAlign.center,
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(ctx).pop();
              //Navigator.pushReplacementNamed(context, '/menuEva');
            },
            child: Text(
              "OK",
              style: TextStyle(fontSize: 25),
            ),
          ),
        ],
      ),
    );
  }

  //popup de reponse erronée
  // void Errorpopup(BuildContext context) {
  //   showDialog(
  //     barrierDismissible: false,
  //     context: context,
  //     builder: (ctx) => AlertDialog(
  //       title: Text(
  //         "Résultat",
  //         textAlign: TextAlign.center,
  //         style: TextStyle(
  //           fontSize: 25,
  //           color: Colors.red[400],
  //         ),
  //       ),
  //       content: Text(
  //         "Mauvaise réponse",
  //         textAlign: TextAlign.center,
  //       ),
  //       actions: <Widget>[
  //         TextButton(
  //           onPressed: () {
  //             Navigator.of(ctx).pop();
  //           },
  //           child: Text(
  //             "Continuer",
  //             style: TextStyle(fontSize: 25),
  //           ),
  //         )
  //       ],
  //     ),
  //   );
  // }

  //popup de succès de l'évaluation
  void Successpopup() {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(
          "Félicitation",
          style: TextStyle(
            fontSize: 25,
            color: Colors.green[400],
          ),
        ),
        content: Text(
          "Vous avez terminer votre évaluation",
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
             Navigator.pushNamedAndRemoveUntil(
                  context, '/menuEva', ModalRoute.withName('/menu'));
            },
            child: Text(
              "Ok",
              style: TextStyle(fontSize: 25),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    //affichage de popup d'evaluation
    debutEvaluation != "true"
        ? Future.delayed(Duration.zero, () => Startpopup(context))
        : "";
    return Scaffold(
      //backgroundColor: '#fcca0c'.toColor2(),
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 50,
        backgroundColor: '#fcca0c'.toColor18(),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          tooltip: "Close",
          onPressed: () {
            Alertpopup(context);
          },
        ),
        title: Text(
          widget.title + 'Evaluation: Exercice 3 Numératie',
          style:
              TextStyle(color: Color(0xff000000), fontStyle: FontStyle.italic),
        ),
      ),
      body: SingleChildScrollView(
          child: (_counter < evaElements.length)
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SizedBox(height: 20),
                    Text(
                      "Convertis les mesures de capacités et de masse suivantes :",
                      style: TextStyle(fontSize: 20),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      //Menu buttons---------
                      children: <Widget>[
                        Padding(
                            padding: EdgeInsets.all(15),
                            child: Text(
                              "${evaElements[_counter]["question"]}",
                              style: TextStyle(fontSize: 35, color: Colors.red),
                            )),
                      ],
                    ),
                    SizedBox(height: 10),

                    Form(
                        child: Column(
                      children: [
                        Container(
                            width: MediaQuery.of(context).size.width / 3,
                            child: TextFormField(
                              controller: _controller,
                              decoration: InputDecoration(
                                labelText: "Ecrivez la réponse",
                                border: OutlineInputBorder(),
                              ),
                            )),
                        ElevatedButton(
                            onPressed: () {
                              CheckChoice(_controller.text);

                              _controller.clear();
                            },
                            child: Text("SOUMETTRE"))
                      ],
                    ))
                    //--- Menu -----------------------
                  ],
                )
              : null),
      floatingActionButton: Container(
        height: 80.0,
        width: 80.0,
        child: FittedBox(
          child: FloatingActionButton(
              backgroundColor: Colors.amber,
              child: Text('${point.toStringAsFixed(1)}/1'),
              onPressed: () => null),
        ),
      ),
    );
  }
}
