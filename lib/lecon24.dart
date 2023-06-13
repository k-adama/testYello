import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:audioplayers/audioplayers.dart';
import 'menu.dart';
import 'infosymbol.dart';
import 'menulecon.dart';

extension ColorExtension on String {
  toColor6() {
    var hexString = this;
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}

class Lecon24 extends StatefulWidget {
  const Lecon24({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<Lecon24> createState() => _Lecon24State();
}

class _Lecon24State extends State<Lecon24> {
  int state = 1;
  String theaudio = '';

  final player = AudioPlayer();
  static Color thebackcolor0 = Colors.white;
  static Color thebackcolor1 = Colors.white;
  static Color thebackcolor2 = Colors.white;
  static Color thebackcolor3 = Colors.white;
  static Color thebackcolor4 = Colors.white;
  static Color thebackcolor5 = Colors.white;
  static Color thebackcolor6 = Colors.white;
  static Color thebackcolor7 = Colors.white;
  static Color thebackcolor8 = Colors.white;
  static Color thebackcolor9 = Colors.white;
  static Color thebackcolor10 = Colors.white;
  static Color thebackcolor11 = Colors.white;
  static Color thebackcolor12 = Colors.white;
  static Color thebackcolor13 = Colors.white;
  static Color thebackcolor14 = Colors.white;
  static Color thebackcolor15 = Colors.white;
  static Color thebackcolor16 = Colors.white;
  static Color thebackcolor17 = Colors.white;
  static Color thebackcolor18 = Colors.white;
  static Color thebackcolor19 = Colors.white;
  static Color thebackcolor20 = Colors.white;
  static Color thebackcolor21 = Colors.white;
  static Color thebackcolor22 = Colors.white;
  static Color thebackcolor23 = Colors.white;
  static Color thebackcolor24 = Colors.white;
  static Color thebackcolor25 = Colors.white;
  static Color thebackcolor26 = Colors.white;
  static Color thebackcolor27 = Colors.white;
  static Color thebackcolor28 = Colors.white;
  static Color thebackcolor29 = Colors.white;
  static Color thebackcolor30 = Colors.white;
  static Color thebackcolor31 = Colors.white;
  static Color thebackcolor32 = Colors.white;

  var colorArray = new List<Color>.filled(33, Colors.white, growable: true);
  //static List<Color>colorArray.filled(0,0, growable:true);

  void SetColorArray() {
    colorArray = [
      thebackcolor1,
      thebackcolor2,
      thebackcolor3,
      thebackcolor4,
      thebackcolor5,
      thebackcolor6,
      thebackcolor7,
      thebackcolor8,
      thebackcolor9,
      thebackcolor10,
      thebackcolor11,
      thebackcolor12,
      thebackcolor13,
      thebackcolor14,
      thebackcolor15,
      thebackcolor16,
      thebackcolor17,
      thebackcolor18,
      thebackcolor18,
      thebackcolor19,
      thebackcolor20,
      thebackcolor21,
      thebackcolor22,
      thebackcolor23,
      thebackcolor24,
      thebackcolor25,
      thebackcolor26,
      thebackcolor27,
      thebackcolor28,
      thebackcolor29,
      thebackcolor30,
      thebackcolor31,
      thebackcolor32,
    ];
  }

  String audio0 = 'audio/lecon24/loisPhrase.mp3';
  String audio1 = 'audio/lecon24/neufpoisson.mp3';
  String audio2 = 'audio/lecon24/moins.mp3';
  String audio3 = 'audio/lecon24/troispoisson.mp3';
  String audio4 = 'audio/lecon24/egal.mp3';
  String audio5 = 'audio/lecon24/sixpoissons.mp3';
  String audio6 = 'audio/lecon24/neuf.mp3';
  String audio7 = 'audio/lecon24/moins.mp3';
  String audio8 = 'audio/lecon24/trois.mp3';
  String audio9 = 'audio/lecon24/egal.mp3';
  String audio10 = 'audio/lecon24/six.mp3';
  String audio11 = 'audio/lecon24/neuf.mp3';
  String audio12 = 'audio/lecon24/moins.mp3';
  String audio13 = 'audio/lecon24/trois.mp3';
  String audio14 = 'audio/lecon24/egal.mp3';
  String audio15 = 'audio/lecon24/six.mp3';
  String audio16 = 'audio/lecon24/sept.mp3';
  String audio17 = 'audio/lecon24/moins.mp3';
  String audio18 = 'audio/lecon24/cinq.mp3';
  String audio19 = 'audio/lecon24/egal.mp3';
  String audio20 = 'audio/lecon24/cinq.mp3';
  String audio21 = 'audio/lecon24/moins.mp3';
  String audio22 = 'audio/lecon24/cinq.mp3';
  String audio23 = 'audio/lecon24/egal.mp3';
  String audio24 = 'audio/lecon24/huit.mp3';
  String audio25 = 'audio/lecon24/moins.mp3';
  String audio26 = 'audio/lecon24/trois.mp3';
  String audio27 = 'audio/lecon24/egal.mp3';
  String audio28 = 'audio/lecon24/quatre.mp3';
  String audio29 = 'audio/lecon24/moins.mp3';
  String audio30 = 'audio/lecon24/deux.mp3';
  String audio31 = 'audio/lecon24/egal.mp3';

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    //SetColorArray();
    state = 0;
    //changeHilght();
    // player = AudioPlayer();
  }

  void playSound(String thesound) {
    player.play(AssetSource('audio/lecon21/$thesound.mp3'));
  }

  void RepeatVoice() {
    player.play(AssetSource(theaudio));
  }

  void extraHilght(int i) async {
    setState(() {
      if (i == 7) {
        colorArray[7] = Colors.yellowAccent;
        colorArray[8] = Colors.white;
        colorArray[9] = Colors.white;
      } else if (i == 8) {
        colorArray[7] = Colors.white;
        colorArray[8] = Colors.yellowAccent;
        colorArray[9] = Colors.white;
      } else {
        colorArray[7] = Colors.white;
        colorArray[8] = Colors.white;
        colorArray[9] = Colors.yellowAccent;
      }
    });
  }

  void changeHilght() async {
    setState(() {
      if (state == 0) {
        theaudio = audio0;
      } else if (state == 1) {
        theaudio = audio1;
      } else if (state == 2) {
        theaudio = audio2;
      } else if (state == 3) {
        theaudio = audio3;
      } else if (state == 4) {
        theaudio = audio4;
      } else if (state == 5) {
        theaudio = audio5;
      } else if (state == 6) {
        theaudio = audio6;
      } else if (state == 7) {
        theaudio = audio7;
      } else if (state == 8) {
        theaudio = audio8;
      } else if (state == 9) {
        theaudio = audio9;
      } else if (state == 10) {
        theaudio = audio10;
      } else if (state == 11) {
        theaudio = audio11;
      } else if (state == 12) {
        theaudio = audio12;
      } else if (state == 13) {
        theaudio = audio13;
      } else if (state == 14) {
        theaudio = audio14;
      } else if (state == 15) {
        theaudio = audio15;
      } else if (state == 16) {
        theaudio = audio16;
      } else if (state == 17) {
        theaudio = audio17;
      } else if (state == 18) {
        theaudio = audio18;
      } else if (state == 19) {
        theaudio = audio19;
      } else if (state == 20) {
        theaudio = audio20;
      } else if (state == 21) {
        theaudio = audio21;
      } else if (state == 22) {
        theaudio = audio22;
      } else if (state == 23) {
        theaudio = audio23;
      } else if (state == 24) {
        theaudio = audio24;
      } else if (state == 25) {
        theaudio = audio25;
      } else if (state == 26) {
        theaudio = audio26;
      } else if (state == 27) {
        theaudio = audio27;
      } else if (state == 28) {
        theaudio = audio28;
      } else if (state == 29) {
        theaudio = audio29;
      } else if (state == 30) {
        theaudio = audio30;
      } else if (state == 31) {
        theaudio = audio31;
      } else {
        theaudio = audio0;
      }
      //player.setAsset(theaudio);
      player.play(AssetSource(theaudio));
      try {
        if (state > 31) {
          state = 0;
        }
        for (int i = 0; i < 32; i++) {
          if (state == i) {
            colorArray[i] = Colors.yellowAccent;
            //    'thebackcolor$state' =  Colors.white;
          } else {
            colorArray[i] = Colors.white;
          }
        }
        //SetColorArray();
        state = state + 1;
        print(state);
      } on Exception catch (_) {
        print('error');
      }
      //theaudio = 'audio$state';
    });
    print(theaudio);
  }

  //Lire phrase et les mots
  Text letters({
    Color? color,
    String? text,
    int i = 0,
    double size = 20,
    FontWeight? font,
    border,
  }) {
    return Text(
      text!,
      style: TextStyle(
          color: color,
          fontWeight: font,
          fontFamily: 'Poppins',
          fontSize: size,
          background: Paint()
            ..strokeWidth = 3.0
            ..color = colorArray[i]
            ..style = PaintingStyle.stroke
            ..strokeJoin = StrokeJoin.round),
    );
  }

//Fin lecture phrase et les mots

  //Début lecture des syllabes
  SizedBox Syllabes({String? son}) {
    return SizedBox(
      width: 100,
      height: 80,
      child: Card(
        child: new InkWell(
          onTap: () {
            playSound(son);
          },
          child: Center(
              child: Text(
            son!,
            style: TextStyle(
              fontSize: 35,
              fontFamily: 'Poppins',
            ),
          )),
        ),
      ),
    );
  }
  //Fin lecture des syllabes

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: '#fcca0c'.toColor2(),
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 40,
        backgroundColor: '#fcca0c'.toColor6(),
        title: Text(
          widget.title + 'Leçon 24',
          style:
              TextStyle(color: Color(0xff000000), fontStyle: FontStyle.italic),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            //titre de la leçon
            Padding(
              padding: EdgeInsets.all(10), //apply padding to all four sides
              child: Text(
                'La soustraction (-)',
                style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold),
              ),
            ),
            //contenu de la leçon
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                //  Image illustration de gauche
                SizedBox(
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: 100,
                            height: 50,
                            child: Card(
                              child: new InkWell(
                                onTap: () {
                                  // Navigator.pushNamed(context, '/menu');
                                  Navigator.pop(context);
                                },
                                child: const Icon(Icons.arrow_back_ios),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 50,
                            height: 50,
                            child: Card(
                              child: new InkWell(
                                onTap: () {
                                  //print("tapped");
                                  RepeatVoice();
                                },
                                child: const Icon(Icons.repeat),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 50,
                            height: 50,
                            child: Card(
                              child: new InkWell(
                                onTap: () {
                                  changeHilght();
                                },
                                child: const Icon(Icons.speaker_notes),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 300,
                        child: Image(
                          image: AssetImage('assets/lecon24/lecon24.png'),
                          width: 300,
                        ),
                      ),

                      //--- Menu -----------------------
                    ],
                  ),
                ),

                //  phrase de droite
                Container(
                  margin: EdgeInsets.only(bottom: 100, top: 30),
                  width: MediaQuery.of(context).size.width / 2,
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          letters(
                              text: "Akim pêche ",
                              font: FontWeight.w600,
                              size: MediaQuery.of(context).size.width * 0.022,
                              i: 0),
                          letters(
                              text: "9 ",
                              font: FontWeight.w600,
                              size: MediaQuery.of(context).size.width * 0.022,
                              color: Colors.red,
                              i: 0),
                          letters(
                              text: "poissons. Arrivés au village,",
                              font: FontWeight.w600,
                              size: MediaQuery.of(context).size.width * 0.022,
                              i: 0),
                        ],
                      ),

                      Row(
                        children: <Widget>[
                          letters(
                              text: "il passe voir maman Loïs qui achète",
                              font: FontWeight.w600,
                              size: MediaQuery.of(context).size.width * 0.022,
                              i: 0),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          letters(
                              text: "3 ",
                              font: FontWeight.w600,
                              size: MediaQuery.of(context).size.width * 0.022,
                              color: Colors.red,
                              i: 0),
                          letters(
                              text: "poissons.",
                              font: FontWeight.w600,
                              size: MediaQuery.of(context).size.width * 0.022,
                              i: 0),
                        ],
                      ),
                      //fin phrase
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        children: <Widget>[
                          letters(
                              text: "9 ",
                              font: FontWeight.w600,
                              size: MediaQuery.of(context).size.width * 0.022,
                              i: 1,
                              color: Colors.red),
                          letters(
                            text: "poissons",
                            font: FontWeight.w600,
                            size: MediaQuery.of(context).size.width * 0.022,
                            i: 1,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          letters(
                              text: "- ",
                              font: FontWeight.w600,
                              size: MediaQuery.of(context).size.width * 0.022,
                              i: 2,
                              color: Colors.red),
                          SizedBox(
                            width: 15,
                          ),
                          letters(
                              text: "3 ",
                              font: FontWeight.w600,
                              size: MediaQuery.of(context).size.width * 0.022,
                              i: 3,
                              color: Colors.red),
                          letters(
                            text: "poissons",
                            font: FontWeight.w600,
                            size: MediaQuery.of(context).size.width * 0.022,
                            i: 3,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          letters(
                              text: "= ",
                              font: FontWeight.w600,
                              size: MediaQuery.of(context).size.width * 0.022,
                              i: 4,
                              color: Colors.red),
                          SizedBox(
                            width: 15,
                          ),
                          letters(
                              text: "6 ",
                              font: FontWeight.w600,
                              size: MediaQuery.of(context).size.width * 0.022,
                              i: 5,
                              color: Colors.red),
                          letters(
                            text: "poissons",
                            font: FontWeight.w600,
                            size: MediaQuery.of(context).size.width * 0.022,
                            i: 5,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: <Widget>[
                          letters(
                              text: "9 ",
                              font: FontWeight.w600,
                              size: MediaQuery.of(context).size.width * 0.022,
                              i: 6,
                              color: Colors.red),
                          SizedBox(
                            width: 95,
                          ),
                          letters(
                              text: "- ",
                              font: FontWeight.w600,
                              size: MediaQuery.of(context).size.width * 0.022,
                              i: 7,
                              color: Colors.red),
                          SizedBox(
                            width: 15,
                          ),
                          letters(
                              text: "3 ",
                              font: FontWeight.w600,
                              size: MediaQuery.of(context).size.width * 0.022,
                              i: 8,
                              color: Colors.red),
                          SizedBox(
                            width: 88,
                          ),
                          letters(
                              text: "= ",
                              font: FontWeight.w600,
                              size: MediaQuery.of(context).size.width * 0.022,
                              i: 9,
                              color: Colors.red),
                          SizedBox(
                            width: 15,
                          ),
                          letters(
                              text: "6 ",
                              font: FontWeight.w600,
                              size: MediaQuery.of(context).size.width * 0.022,
                              i: 10,
                              color: Colors.red),
                        ],
                      ),

                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: <Widget>[
                          letters(
                              text: "9 ",
                              font: FontWeight.w600,
                              size: MediaQuery.of(context).size.width * 0.022,
                              i: 11,
                              color: Colors.red),
                          SizedBox(
                            width: 95,
                          ),
                          letters(
                              text: "- ",
                              font: FontWeight.w600,
                              size: MediaQuery.of(context).size.width * 0.022,
                              i: 12,
                              color: Colors.red),
                          SizedBox(
                            width: 15,
                          ),
                          letters(
                              text: "3 ",
                              font: FontWeight.w600,
                              size: MediaQuery.of(context).size.width * 0.022,
                              i: 13,
                              color: Colors.red),
                          SizedBox(
                            width: 88,
                          ),
                          letters(
                              text: "= ",
                              font: FontWeight.w600,
                              size: MediaQuery.of(context).size.width * 0.022,
                              i: 14,
                              color: Colors.red),
                          SizedBox(
                            width: 15,
                          ),
                          letters(
                              text: "6 ",
                              font: FontWeight.w600,
                              size: MediaQuery.of(context).size.width * 0.022,
                              i: 15,
                              color: Colors.red),
                        ],
                      ),
                      //calcul
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: <Widget>[
                          letters(
                              text: "7 ",
                              font: FontWeight.w600,
                              size: MediaQuery.of(context).size.width * 0.022,
                              i: 16,
                              color: Colors.red),
                          letters(
                              text: "- ",
                              font: FontWeight.w600,
                              size: MediaQuery.of(context).size.width * 0.022,
                              i: 17,
                              color: Colors.red),
                          letters(
                              text: "5 ",
                              font: FontWeight.w600,
                              size: MediaQuery.of(context).size.width * 0.022,
                              i: 18,
                              color: Colors.red),
                          letters(
                              text: "= ",
                              font: FontWeight.w600,
                              size: MediaQuery.of(context).size.width * 0.022,
                              i: 19,
                              color: Colors.red),
                          SizedBox(
                            width: 25,
                          ),
                          letters(
                              text: "5 ",
                              font: FontWeight.w600,
                              size: MediaQuery.of(context).size.width * 0.022,
                              i: 20,
                              color: Colors.red),
                          letters(
                              text: "- ",
                              font: FontWeight.w600,
                              size: MediaQuery.of(context).size.width * 0.022,
                              i: 21,
                              color: Colors.red),
                          letters(
                              text: "5 ",
                              font: FontWeight.w600,
                              size: MediaQuery.of(context).size.width * 0.022,
                              i: 22,
                              color: Colors.red),
                          letters(
                              text: "= ",
                              font: FontWeight.w600,
                              size: MediaQuery.of(context).size.width * 0.022,
                              i: 23,
                              color: Colors.red),
                          SizedBox(
                            width: 25,
                          ),
                          letters(
                              text: "8 ",
                              font: FontWeight.w600,
                              size: MediaQuery.of(context).size.width * 0.022,
                              i: 24,
                              color: Colors.red),
                          letters(
                              text: "- ",
                              font: FontWeight.w600,
                              size: MediaQuery.of(context).size.width * 0.022,
                              i: 25,
                              color: Colors.red),
                          letters(
                              text: "3 ",
                              font: FontWeight.w600,
                              size: MediaQuery.of(context).size.width * 0.022,
                              i: 26,
                              color: Colors.red),
                          letters(
                              text: "= ",
                              font: FontWeight.w600,
                              size: MediaQuery.of(context).size.width * 0.022,
                              i: 27,
                              color: Colors.red),
                          SizedBox(
                            width: 25,
                          ),
                          letters(
                              text: "4 ",
                              font: FontWeight.w600,
                              size: MediaQuery.of(context).size.width * 0.022,
                              i: 28,
                              color: Colors.red),
                          letters(
                              text: "- ",
                              font: FontWeight.w600,
                              size: MediaQuery.of(context).size.width * 0.022,
                              i: 29,
                              color: Colors.red),
                          letters(
                              text: "2 ",
                              font: FontWeight.w600,
                              size: MediaQuery.of(context).size.width * 0.022,
                              i: 30,
                              color: Colors.red),
                          letters(
                              text: "= ",
                              font: FontWeight.w600,
                              size: MediaQuery.of(context).size.width * 0.022,
                              i: 31,
                              color: Colors.red),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),

            //Calcul

            // le text de la fin
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 50, bottom: 50),
                  child: InkWell(
                    onTap: () {
                      extraHilght(9);
                      player.play(AssetSource('audio/lecon24/signe.mp3'));
                    },
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          letters(
                              text:
                                  "Pour faire le signe de la soustraction (-), on fait : ",
                              i: 9),
                          letters(
                              text: "la tolérance.",
                              font: FontWeight.w600,
                              size: MediaQuery.of(context).size.width * 0.022,
                              i: 9,
                              color: Colors.red),
                        ]),
                  ),
                ),
              ],
            )

            //---------------- Les phrases de fin ------------
            // Row(
            //   //---------------- Les  sons ------------
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: <Widget>[
            //     Column(
            //       children: <Widget>[
            //         SizedBox(
            //           width: 300,
            //           height: 20,
            //         ),
            //         SizedBox(
            //           width: 550,
            //           height: 300,
            //           child: Text(
            //             "Il nous faut chercher du bon texte",
            //             style: TextStyle(
            //                 color: Colors.black,
            //                 fontSize: 30,
            //                 fontFamily: 'Poppins',
            //                 background: Paint()
            //                   ..strokeWidth = 25.0
            //                   ..color = Colors.white
            //                   ..style = PaintingStyle.fill
            //                   ..strokeJoin = StrokeJoin.round),
            //           ),
            //         ),
            //       ],
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
