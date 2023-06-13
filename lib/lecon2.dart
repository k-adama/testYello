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

class Lecon2 extends StatefulWidget {
  const Lecon2({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<Lecon2> createState() => _Lecon2State();
}

class _Lecon2State extends State<Lecon2> {
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

  var colorArray = new List<Color>.filled(23, Colors.white, growable: true);
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
      thebackcolor22
    ];
  }

  String audio0 = 'audio/lecon2/phrase.mp3';
  String audio1 = 'audio/lecon2/phrase2.mp3';
  String audio2 = 'audio/lecon2/cc.mp3';
  String audio3 = 'audio/lecon2/ci.mp3';
  String audio4 = 'audio/lecon2/cd.mp3';
  String audio5 = 'audio/lecon2/cb.mp3';
  String audio6 = 'audio/lecon2/phrase3.mp3';
  String audio7 = 'audio/lecon2/ec.mp3';
  String audio8 = 'audio/lecon2/ei.mp3';
  String audio9 = 'audio/lecon2/ed.mp3';
  String audio10 = 'audio/lecon2/eb.mp3';
  // String audio11 = 'audio/lecon3/O.mp3';
  // String audio12 = 'audio/lecon3/e.mp3';

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
    player.play(AssetSource('audio/lecon3/$thesound.mp3'));
  }

  void RepeatVoice() {
    player.play(AssetSource(theaudio));
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
      } else {
        theaudio = audio0;
      }
      //player.setAsset(theaudio);
      player.play(AssetSource(theaudio));
      try {
        if (state > 10) {
          state = 0;
        }
        for (int i = 0; i < 22; i++) {
          if (state == i) {
            colorArray[i] = Colors.yellowAccent;
            //    'thebackcolor$state' =  Colors.white;
          } else {
            colorArray[i] = Colors.white;
          }
          // if (i == 0) {
          //   setState(() {
          //     state == i;
          //     colorArray[i] = Colors.yellowAccent;;
          //   });
          //   //    'thebackcolor$state' =  Colors.white;
          // } else if (state == i) {
          //   colorArray[i] = Colors.yellowAccent;
          // } else {
          //   colorArray[i] = Colors.white;
          // }
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
          widget.title + 'Leçon 2',
          style:
              TextStyle(color: Color(0xff000000), fontStyle: FontStyle.italic),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10), //apply padding to all four sides
              child: Text(
                'Lettres et ordinateur',
                style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                //Menu buttons---------
                // mainAxisAlignment: MainAxisAlignment.start,
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
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                // Expanded(
                SizedBox(
                  //  Image illustration

                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          SizedBox(
                            height: 200,
                            child: Image(
                              image: AssetImage('assets/lecon/lecon2.png'),
                              width: 300,
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
                Container(
                  margin: EdgeInsets.only(bottom: 100),
                  width: MediaQuery.of(context).size.width / 2,
                  child: Column(
                    children: <Widget>[
                      letters(
                          font: FontWeight.w600,
                          size: 25,
                          text:
                              '''J’utilise un ordinateur pour être en contact avec les autres.'''),

                      // Ligne 1----------------------------------------///
                    ],
                  ),
                ),
                // ),
              ],
            ),

            Row(
              //---------------- Les  sons ------------
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    letters(
                        text: "Sur le clavier il y a les lettres",
                        font: FontWeight.w600,
                        i: 1),
                    SizedBox(
                      height: 2,
                    ),
                    letters(
                      text: 'Sur le clavier il y a c',
                      i: 2,
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    letters(text: 'Sur le clavier il y a i', i: 3),
                    SizedBox(
                      height: 2,
                    ),
                    letters(text: 'Sur le clavier il y a d', i: 4),
                    SizedBox(
                      height: 2,
                    ),
                    letters(text: 'Sur le clavier il y a b', i: 5),
                  ],
                ),
                Column(
                  children: <Widget>[
                    letters(
                        text: "Sur l’écran on lit les lettres",
                        font: FontWeight.w600,
                        i: 6),
                    SizedBox(
                      height: 2,
                    ),
                    letters(text: 'Sur l’écran on lit c', i: 7),
                    SizedBox(
                      height: 2,
                    ),
                    letters(text: 'Sur l’écran on lit i', i: 8),
                    SizedBox(
                      height: 2,
                    ),
                    letters(text: 'Sur l’écran on lit d', i: 9),
                    SizedBox(
                      height: 2,
                    ),
                    letters(text: 'Sur l’écran on lit b', i: 10),
                  ],
                ),
              ],
            ),
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
