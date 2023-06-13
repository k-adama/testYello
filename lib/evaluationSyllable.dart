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

class EvaSyllabe extends StatefulWidget {
  const EvaSyllabe({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<EvaSyllabe> createState() => _EvaSyllabeState();
}

class _EvaSyllabeState extends State<EvaSyllabe> {
  final player = AudioPlayer();
  int _counter = 0;
  int point = 0;
  var debutEvaluation;
  String theAudioPath = '';
  late SharedPreferences preferences;

  List<String> syllabes = [
    'ra',
    'ba',
    'ca',
    'da',
    'na',
    'fa',
    'ma',
    'ta',
    'pa',
    'la',
    'sa',
    'va',
    'mi',
    'ti',
    'pi',
    'li',
    'si',
    'fi',
    'bi',
    'di',
    'gi',
    'vi',
    'ki',
    'si',
  ];

  List<String> AudioName = [
    'audio/lecon1/ra.mp3',
    'audio/lecon1/ba.mp3',
    'audio/lecon1/ca.mp3',
    'audio/lecon1/da.mp3',
    'audio/lecon1/na.mp3',
    'audio/lecon1/fa.mp3',
    'audio/lecon1/ma.mp3',
    'audio/lecon1/ta.mp3',
    'audio/lecon1/pa.mp3',
    'audio/lecon1/la.mp3',
    'audio/lecon1/sa.mp3',
    'audio/lecon1/va.mp3',
    'audio/lecon1/mi.mp3',
    'audio/lecon1/ti.mp3',
    'audio/lecon1/pi.mp3',
    'audio/lecon1/li.mp3',
    'audio/lecon1/si.mp3',
    'audio/lecon1/fi.mp3',
    'audio/lecon1/bi.mp3',
    'audio/lecon1/di.mp3',
    'audio/lecon1/gi.mp3',
    'audio/lecon1/vi.mp3',
    'audio/lecon1/ki.mp3',
    'audio/lecon1/si.mp3',
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
    RandomCounter();
    theAudioPath = AudioName[_counter];
  }

  void playSound() {
    player.play(AssetSource(theAudioPath));
  }

  void RandomCounter() {
    int max = 24;
    setState(() {
      _counter = 24 - (Random().nextInt(max) + 1);
    });
    //print(randomNumber);
  }

  void CheckChoice(int index) {
    if (point < 50) {
      if (_counter == index) {
        setState(() {
          RandomCounter();
          theAudioPath = AudioName[_counter];
          point = point + 5;
          if (point == 50) {
            Saveresult();
          }
        });
        playSound();
      } else {
        Errorpopup(context);
        //Navigator.pushReplacementNamed(context, '/infosymbol');
      }
    } else {
      Saveresult();
      Navigator.pushReplacementNamed(context, '/menuevaluation');
    }
  }

  Future Saveresult() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('litteratie', 50);
    print(preferences.getInt('symbol'));
    Successpopup();
  }

  //popup anonçant le début de l'évaluation
  void Startpopup(BuildContext context) {
    showDialog(
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
              Navigator.of(ctx).pop();
              Navigator.pushReplacementNamed(context, '/menuEva');
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
          "Vous devez avoir la totalité des points avant de sortir",
          textAlign: TextAlign.center,
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(ctx).pop();
              Navigator.pushReplacementNamed(context, '/menuEva');
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
  void Errorpopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(
          "Résultat",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 25,
            color: Colors.red[400],
          ),
        ),
        content: Text(
          "Mauvaise réponse",
          textAlign: TextAlign.center,
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(ctx).pop();
            },
            child: Text(
              "Réesayer",
              style: TextStyle(fontSize: 25),
            ),
          )
        ],
      ),
    );
  }

  //popup de succès de l'évaluation
  void Successpopup() {
    showDialog(
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
          "Vous avez réusir votre évaluation",
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(ctx).pop();
              Navigator.pushReplacementNamed(context, '/menuEva');
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
          widget.title + 'Evaluation Syllables',
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                // Expanded(
                SizedBox(
                  //  Image illustration
                  width: 200,
                  height: 100,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        //Menu buttons---------
                        children: <Widget>[
                          SizedBox(
                            width: 100,
                            height: 50,
                            child: Card(
                              child: new InkWell(
                                onTap: () {
                                  //print("tapped");
                                  playSound();
                                },
                                child: const Icon(Icons.repeat),
                              ),
                            ),
                          ),
                        ],
                      ),

                      //--- Menu -----------------------
                    ],
                  ),
                ),

                // ),
                // Expanded(

                // ),
              ],
            ),
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
                        for (var j = 0; j < 6; j++)
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
                        for (var j = 6; j < 12; j++)
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
                        for (var j = 12; j < 18; j++)
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
                        for (var j = 18; j < 24; j++)
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
              child: Text('$point/50'),
              onPressed: () {
                //playSound();
              }),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
// import 'dart:math';

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:audioplayers/audioplayers.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:projets/menu.dart';
// import 'package:projets/menuEvaluation.dart';

// extension ColorExtension on String {
//   toColor18() {
//     var hexString = this;
//     final buffer = StringBuffer();
//     if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
//     buffer.write(hexString.replaceFirst('#', ''));
//     return Color(int.parse(buffer.toString(), radix: 16));
//   }
// }


// class EvaSyllabe extends StatefulWidget {
//   const EvaSyllabe({Key? key, required this.title}) : super(key: key);
//   final String title;
//   @override
//   State<EvaSyllabe> createState() => _EvaSyllabeState();
// }

// class _EvaSyllabeState extends State<EvaSyllabe> {
//   final player = AudioPlayer();
//   int _counter = 0;
//   int point = 0;
//   var debutEvaluation;
//   String theAudioPath = '';
//   late SharedPreferences preferences;

//   List<String> syllabes = [
//     'ra',
//     'ba',
//     'ca',
//     'da',
//     'na',
//     'fa',
//     'ma',
//     'ta',
//     'pa',
//     'la',
//     'sa',
//     'va',
//     'mi',
//     'ti',
//     'pi',
//     'li',
//     'si',
//     'fi',
//     'bi',
//     'di',
//     'gi',
//     'vi',
//     'ki',
//     'si',
//   ];

//   List<String> AudioName = [
//     'audio/lecon1/ra.mp3',
//     'audio/lecon1/ba.mp3',
//     'audio/lecon1/ca.mp3',
//     'audio/lecon1/da.mp3',
//     'audio/lecon1/na.mp3',
//     'audio/lecon1/fa.mp3',
//     'audio/lecon1/ma.mp3',
//     'audio/lecon1/ta.mp3',
//     'audio/lecon1/pa.mp3',
//     'audio/lecon1/la.mp3',
//     'audio/lecon1/sa.mp3',
//     'audio/lecon1/va.mp3',
//     'audio/lecon1/mi.mp3',
//     'audio/lecon1/ti.mp3',
//     'audio/lecon1/pi.mp3',
//     'audio/lecon1/li.mp3',
//     'audio/lecon1/si.mp3',
//     'audio/lecon1/fi.mp3',
//     'audio/lecon1/bi.mp3',
//     'audio/lecon1/di.mp3',
//     'audio/lecon1/gi.mp3',
//     'audio/lecon1/vi.mp3',
//     'audio/lecon1/ki.mp3',
//     'audio/lecon1/si.mp3',
//   ];

//   @override
//   void dispose() {
//     player.dispose();
//     super.dispose();
//   }

//   @override
//   void initState() {
//     super.initState();
//     debutEvaluation = "false";
//     RandomCounter();
//     theAudioPath = AudioName[_counter];
//   }

//   void playSound() {
//     player.play(AssetSource(theAudioPath));
//   }

//   void RandomCounter() {
//     int max = 24;
//     setState(() {
//       _counter = 24 - (Random().nextInt(max) + 1);
//     });
//     //print(randomNumber);
//   }

//   void CheckChoice(int index) {
//     if (point < 50) {
//       if (_counter == index) {
//         setState(() {
//           RandomCounter();
//           theAudioPath = AudioName[_counter];
//           point = point + 5;
//           if (point == 50) {
//             Saveresult();
//           }
//         });
//         playSound();
//       } else {
//         Errorpopup(context);
//         //Navigator.pushReplacementNamed(context, '/infosymbol');
//       }
//     } //else {
//     //   Saveresult();
//     //   //Navigator.pushReplacementNamed(context, '/menu');
//     // }
//   }

//   Future Saveresult() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     Successpopup();
//     prefs.setInt('litteratie', 50);
//     print(preferences.getInt('symbol'));
//   }

//   //popup anonçant le début de l'évaluation
//   void Startpopup(BuildContext context) {
//     showDialog(
//       context: context,
//       builder: (ctx) => AlertDialog(
//         title: Text(
//           "Evaluation",
//           textAlign: TextAlign.center,
//           style: TextStyle(
//             fontSize: 25,
//             color: Colors.red[400],
//           ),
//         ),
//         content: Text(
//           "Vous êtes sur le point de commencer votre évaluation",
//           textAlign: TextAlign.center,
//         ),
//         actions: <Widget>[
//           TextButton(
//             onPressed: () {
//               setState(() {
//                 debutEvaluation = "true";
//               });
//               playSound();
//               Navigator.of(ctx).pop();
//             },
//             child: Text(
//               "COMMENCER",
//               style: TextStyle(fontSize: 25),
//             ),
//           ),
//           TextButton(
//             onPressed: () {
//               Navigator.of(ctx).pop();
//               Navigator.pushReplacementNamed(context, '/menuevaluation');
//             },
//             child: Text(
//               "Annuler",
//               style: TextStyle(fontSize: 25),
//             ),
//           )
//         ],
//       ),
//     );
//   }

//   //popup interdissant de faire un retour
//   void Alertpopup(BuildContext context) {
//     showDialog(
//       context: context,
//       builder: (ctx) => AlertDialog(
//         title: Text(
//           "Notification",
//           textAlign: TextAlign.center,
//           style: TextStyle(
//             fontSize: 25,
//             color: Colors.red[400],
//           ),
//         ),
//         content: Text(
//           "Vous devez avoir la totalité des points avant de sortir",
//           textAlign: TextAlign.center,
//         ),
//         actions: <Widget>[
//           TextButton(
//             onPressed: () {
//               Navigator.of(ctx).pop();
//             },
//             child: Text(
//               "OK",
//               style: TextStyle(fontSize: 25),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   //popup de reponse erronée
//   void Errorpopup(BuildContext context) {
//     showDialog(
//       context: context,
//       builder: (ctx) => AlertDialog(
//         title: Text(
//           "Résultat",
//           textAlign: TextAlign.center,
//           style: TextStyle(
//             fontSize: 25,
//             color: Colors.red[400],
//           ),
//         ),
//         content: Text(
//           "Mauvaise réponse",
//           textAlign: TextAlign.center,
//         ),
//         actions: <Widget>[
//           TextButton(
//             onPressed: () {
//               Navigator.of(ctx).pop();
//             },
//             child: Text(
//               "Réesayer",
//               style: TextStyle(fontSize: 25),
//             ),
//           )
//         ],
//       ),
//     );
//   }

//   //popup de succès de l'évaluation
//   void Successpopup() {
//     showDialog(
//       context: context,
//       builder: (ctx) => AlertDialog(
//         title: Text(
//           "Félicitation",
//           style: TextStyle(
//             fontSize: 25,
//             color: Colors.green[400],
//           ),
//         ),
//         content: Text(
//           "Vous avez réusir votre évaluation",
//         ),
//         actions: <Widget>[
//           TextButton(
//             onPressed: () {
//               Navigator.of(ctx).pop();
//               Navigator.pushReplacementNamed(context, '/menuevaluation');
//             },
//             child: Text(
//               "Ok",
//               style: TextStyle(fontSize: 25),
//             ),
//           )
//         ],
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     //affichage de popup d'evaluation
//     debutEvaluation != "true"
//         ? Future.delayed(Duration.zero, () => Startpopup(context))
//         : "";
//     return Scaffold(
//       //backgroundColor: '#fcca0c'.toColor2(),
//       appBar: AppBar(
//         centerTitle: true,
//         toolbarHeight: 50,
//         backgroundColor: '#fcca0c'.toColor18(),
//         leading: IconButton(
//           icon: const Icon(
//             Icons.arrow_back_ios,
//             color: Colors.black,
//           ),
//           tooltip: "Close",
//           onPressed: () {
//             Alertpopup(context);
//             //Navigator.pushReplacementNamed(context, '/menuevaluation');
//           },
//         ),
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(
//           widget.title + 'Evaluation Syllables',
//           style:
//               TextStyle(color: Color(0xff000000), fontStyle: FontStyle.italic),
//         ),
//       ),
//       body: SingleChildScrollView(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           mainAxisSize: MainAxisSize.min,
//           children: <Widget>[
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: <Widget>[
//                 // Expanded(
//                 SizedBox(
//                   //  Image illustration
//                   width: 200,
//                   height: 100,
//                   child: Column(
//                     children: <Widget>[
//                       SizedBox(
//                         height: 20,
//                       ),
//                       Row(
//                         //Menu buttons---------
//                         children: <Widget>[
//                           SizedBox(
//                             width: 100,
//                             height: 50,
//                             child: Card(
//                               child: new InkWell(
//                                 onTap: () {
//                                   //print("tapped");
//                                   playSound();
//                                 },
//                                 child: const Icon(Icons.repeat),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),

//                       //--- Menu -----------------------
//                     ],
//                   ),
//                 ),

//                 // ),
//                 // Expanded(

//                 // ),
//               ],
//             ),
//             Row(
//               //---------------- Les  sons ------------
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: <Widget>[
//                 Column(
//                   children: <Widget>[
//                     // Les sons ----------------------

//                     Row(
//                       // ------Ligne 1 sons --------
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: <Widget>[
//                         for (var j = 0; j < 6; j++)
//                           SizedBox(
//                             width: 100,
//                             height: 80,
//                             child: Card(
//                               child: new InkWell(
//                                 onTap: () {
//                                   CheckChoice(j);
//                                 },
//                                 child: Center(
//                                     child: Text(
//                                   syllabes[j],
//                                   style: TextStyle(
//                                     fontSize: 35,
//                                     fontFamily: 'Poppins',
//                                   ),
//                                 )),
//                               ),
//                             ),
//                           ),
//                       ],
//                     ),
//                     Row(
//                       // ------Ligne 1 sons --------
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: <Widget>[
//                         for (var j = 6; j < 12; j++)
//                           SizedBox(
//                             width: 100,
//                             height: 80,
//                             child: Card(
//                               child: new InkWell(
//                                 onTap: () {
//                                   CheckChoice(j);
//                                 },
//                                 child: Center(
//                                     child: Text(
//                                   syllabes[j],
//                                   style: TextStyle(
//                                     fontSize: 35,
//                                     fontFamily: 'Poppins',
//                                   ),
//                                 )),
//                               ),
//                             ),
//                           ),
//                       ],
//                     ),
//                     Row(
//                       // ------Ligne 1 sons --------
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: <Widget>[
//                         for (var j = 12; j < 18; j++)
//                           SizedBox(
//                             width: 100,
//                             height: 80,
//                             child: Card(
//                               child: new InkWell(
//                                 onTap: () {
//                                   CheckChoice(j);
//                                 },
//                                 child: Center(
//                                     child: Text(
//                                   syllabes[j],
//                                   style: TextStyle(
//                                     fontSize: 35,
//                                     fontFamily: 'Poppins',
//                                   ),
//                                 )),
//                               ),
//                             ),
//                           ),
//                       ],
//                     ),
//                     Row(
//                       // ------Ligne 1 sons --------
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       children: <Widget>[
//                         for (var j = 18; j < 24; j++)
//                           SizedBox(
//                             width: 100,
//                             height: 80,
//                             child: Card(
//                               child: new InkWell(
//                                 onTap: () {
//                                   CheckChoice(j);
//                                 },
//                                 child: Center(
//                                     child: Text(
//                                   syllabes[j],
//                                   style: TextStyle(
//                                     fontSize: 35,
//                                     fontFamily: 'Poppins',
//                                   ),
//                                 )),
//                               ),
//                             ),
//                           ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: Container(
//         height: 80.0,
//         width: 80.0,
//         child: FittedBox(
//           child: FloatingActionButton(
//               backgroundColor: Colors.amber,
//               child: Text('$point/50'),
//               onPressed: () {
//                 //playSound();
//               }),
//         ),
//       ),
//       // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }

