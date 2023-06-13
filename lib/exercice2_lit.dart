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

class Exercice2_lit extends StatefulWidget {
  const Exercice2_lit({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<Exercice2_lit> createState() => _Exercice2_litState();
}

class _Exercice2_litState extends State<Exercice2_lit> {
  final player = AudioPlayer();
  int _counter = 0;
  double point = 0;
  var debutEvaluation;
  String theAudioPath = '';
  String theQuestion = '';
  final reponse = TextEditingController();
  late SharedPreferences preferences;

//tableau des questions
  List<String> questions = [
    'an',
    'en',
    'am',
    'em',
    'in',
    'ain',
    'ein',
    'eur',
    'euse',
    'eure',
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

  void playSound() {
    player.play(AssetSource(theAudioPath));
  }

  void RandomCounter() {
    setState(() {
      _counter++;
    });
  }

  void CheckChoice(String mot) {
    if (_counter < 10) {
      if (mot.contains('${questions[_counter]}') &&
          mot.length > questions[_counter].length) {
        print("....WORD: " + mot + " & SYLLABE: ${questions[_counter]}...");
        reponse.clear();
        setState(() {
          //prochaine
          RandomCounter();
          if (_counter != 10) {
            theQuestion = questions[_counter];
          }
          point = point + 0.1;
          if (_counter == 10) {
            Saveresult();
          }
        });
        // playSound();
      } else {
        // Errorpopup(context);
        reponse.clear();
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

      Navigator.pushReplacementNamed(context, '/menuEva');
    }
  }

  Future Saveresult() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    //Double total = 0 as Double;
    prefs.setDouble('litteratie2', point);
    prefs.setBool("lit2", true);
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
            //Navigator.pushReplacementNamed(context, '/menuevaluation');
          },
        ),
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(
          widget.title + 'Evaluation: Exercice 2',
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
              "Trouvez un mot contenant la syllabe suivante :",
              style: TextStyle(fontSize: 20),
            ),

            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              //Menu buttons---------
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "${theQuestion}",
                    style: TextStyle(fontSize: 35, color: Colors.red),
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
                    SizedBox(
                      width: 300,
                      height: 60,
                      child: TextField(
                        obscureText: false,
                        controller: reponse,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Entrer votre mot ici',
                        ),
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Card(
                      child: InkWell(
                        onTap: () {
                          CheckChoice(reponse.text);
                        },
                        child: Padding(
                          padding: EdgeInsets.all(5),
                          child: Text(
                            'suivant',
                            style: TextStyle(
                              fontSize: 35,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ),
                      ),
                    ),
                    // Les sons ----------------------
                    // Row(
                    //   // ------Ligne 1 sons --------
                    //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //   children: <Widget>[
                    //     for (var j = 0; j < 3; j++)
                    //       Card(
                    //         child: new InkWell(
                    //           onTap: () {
                    //             CheckChoice(j);
                    //           },
                    //           child: Padding(
                    //             padding: EdgeInsets.all(14),
                    //             child: Center(
                    //               child: Text(
                    //                 mots[j],
                    //                 style: TextStyle(
                    //                   fontSize: 35,
                    //                   fontFamily: 'Poppins',
                    //                 ),
                    //               ),
                    //             ),
                    //           ),
                    //         ),
                    //       ),
                    //   ],
                    // ),
                    // Row(
                    //   // ------Ligne 1 sons --------
                    //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //   children: <Widget>[
                    //     for (var j = 3; j < 7; j++)
                    //       Card(
                    //         child: new InkWell(
                    //           onTap: () {
                    //             CheckChoice(j);
                    //           },
                    //           child: Padding(
                    //             padding: EdgeInsets.all(14),
                    //             child: Center(
                    //               child: Text(
                    //                 mots[j],
                    //                 style: TextStyle(
                    //                   fontSize: 35,
                    //                   fontFamily: 'Poppins',
                    //                 ),
                    //               ),
                    //             ),
                    //           ),
                    //         ),
                    //       ),
                    //   ],
                    // ),
                    // Row(
                    //   // ------Ligne 1 sons --------
                    //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //   children: <Widget>[
                    //     for (var j = 7; j < 10; j++)
                    //       Card(
                    //         child: new InkWell(
                    //           onTap: () {
                    //             CheckChoice(j);
                    //           },
                    //           child: Padding(
                    //             padding: EdgeInsets.all(14),
                    //             child: Center(
                    //               child: Text(
                    //                 mots[j],
                    //                 style: TextStyle(
                    //                   fontSize: 35,
                    //                   fontFamily: 'Poppins',
                    //                 ),
                    //               ),
                    //             ),
                    //           ),
                    //         ),
                    //       ),
                    //   ],
                    // ),

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
    );
  }
}
