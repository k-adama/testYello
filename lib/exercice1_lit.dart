import 'dart:ffi';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'menu.dart';
import 'main.dart';
import 'menuEvaluation.dart';

extension ColorExtension on String {
  toColor18() {
    var hexString = this;
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}

class Exercice1_lit extends StatefulWidget {
  const Exercice1_lit({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<Exercice1_lit> createState() => _Exercice1_litState();
}

class _Exercice1_litState extends State<Exercice1_lit> {
  final player = AudioPlayer();
  int _counter = 0;
  double point = 0;
  var debutEvaluation;
  String theAudioPath = '';
  String theQuestion = '';
  late SharedPreferences preferences;

//Tableau des sysllables
  List<String> syllabes = [
    'fou',
    'tou',
    'cu',
    'bou',
    'sou',
    'dou',
    'coi',
    'co',
    'ca',
    'cou',
  ];

//tableau des reponses
  List<String> tableReponses = [
    'dou',
    'ca',
    'tou',
    'cu',
    'fou',
    'co',
    'sou',
    'ca',
    'bou',
    'coi',
  ];

//tableau des questions
  List<String> questions = [
    '1- Une ....leur',
    '2- une ....lebasse',
    '3- Du fou....',
    '4- une ....isine',
    '5- une ....rchette',
    '6- Une ....la',
    '7- la ....dure',
    '8- une noix de ....jou',
    '9- Une ....ture',
    '10- Une ....fure',
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

    theQuestion = questions[_counter];
    retrieveCounter();
  }

  Future retrieveCounter() async {
    preferences = await SharedPreferences.getInstance();
  }

  void RandomCounter() {
    setState(() {
      _counter++;
    });
  }

  void CheckChoice(int index) {
    if (_counter < 10) {
      //vérifiction de la reponse
      if (syllabes[index] == tableReponses[_counter]) {
        setState(() {
          //prochaine
          RandomCounter();
          if (_counter != 10) {
            theQuestion = questions[_counter];
          }
          point = point + 0.1;

          print(".....POINT: ${point.toStringAsFixed(1)}");
          if (_counter == 10) {
            Saveresult();
          }
        });
        // playSound();
      } else {
        // Errorpopup(context);
        RandomCounter();
        if (_counter != 10) {
          theQuestion = questions[_counter];
        }

        if (_counter == 10) {
          Saveresult();
        }
      }
    } else {
      Saveresult();
    }
  }

  Future Saveresult() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs.setDouble('litteratie1', point);
    prefs.setBool("lit1", true);

    print(".....RESULTAT.....");

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
              // Navigator.of(ctx).pop(false);
              Navigator.pop(context);
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
            //Navigator.pushReplacementNamed(context, '/menuevaluation');
          },
        ),
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(
          widget.title + 'Evaluation: Exercice 1',
          style:
              TextStyle(color: Color(0xff000000), fontStyle: FontStyle.italic),
        ),
      ),
      body: SingleChildScrollView(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(height: 20),
            Text(
              "Remplacer les pointillés par les syllabes suivantes :",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "coi, cu, co, ca, tou, bou, fou, cou, dou, sou",
              style: TextStyle(fontSize: 20, color: Colors.red),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              //Menu buttons---------
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Text(
                    "${theQuestion}",
                    style: TextStyle(fontSize: 35),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            //--- Menu -----------------------

            Row(
              //---------------- Les  sons ------------
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    // Les sons ----------------------
                    Row(
                      // ------Ligne 1 sons --------
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        for (var j = 0; j < 5; j++)
                          SizedBox(
                            width: 100,
                            height: 80,
                            child: Card(
                              child: new InkWell(
                                onTap: () {
                                  CheckChoice(j);
                                },
                                child: Center(
                                    child: Text(
                                  syllabes[j],
                                  style: TextStyle(
                                    fontSize: 35,
                                    fontFamily: 'Poppins',
                                  ),
                                )),
                              ),
                            ),
                          ),
                      ],
                    ),
                    Row(
                      // ------Ligne 1 sons --------
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        for (var j = 5; j < 10; j++)
                          SizedBox(
                            width: 100,
                            height: 80,
                            child: Card(
                              child: new InkWell(
                                onTap: () {
                                  CheckChoice(j);
                                },
                                child: Center(
                                    child: Text(
                                  syllabes[j],
                                  style: TextStyle(
                                    fontSize: 35,
                                    fontFamily: 'Poppins',
                                  ),
                                )),
                              ),
                            ),
                          ),
                      ],
                    ),
                    SizedBox(height: 50),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 80.0,
        width: 80.0,
        child: FittedBox(
          child: FloatingActionButton(
              backgroundColor: Colors.amber,
              child: Text('${point.toStringAsFixed(1)} /1'),
              onPressed: () {
                //playSound();
              }),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
