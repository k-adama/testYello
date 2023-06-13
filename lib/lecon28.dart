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

class Lecon28 extends StatefulWidget {
  const Lecon28({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<Lecon28> createState() => _Lecon28State();
}

class _Lecon28State extends State<Lecon28> {
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

  String audio0 = 'audio/lecon28/phrase_0.mp3';
  String audio1 = 'audio/lecon28/melaine.mp3';
  String audio2 = 'audio/lecon28/madelaine.mp3';
  String audio3 = 'audio/lecon28/laine.mp3';
  String audio4 = 'audio/lecon28/leine.mp3';
  String audio5 = 'audio/lecon28/ai.mp3';
  String audio6 = 'audio/lecon28/ei.mp3';

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
    player.play(AssetSource('audio/lecon28/$thesound.mp3'));
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
      } else {
        theaudio = audio0;
      }
      //player.setAsset(theaudio);
      player.play(AssetSource(theaudio));
      try {
        if (state > 6) {
          state = 0;
        }
        for (int i = 0; i < 23; i++) {
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
  SizedBox Syllabe({String? son, String? img}) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 6,
      height: MediaQuery.of(context).size.height / 9,
      child: Card(
        child: new InkWell(
          onTap: () {
            player.play(AssetSource('audio/lecon28/$son.mp3'));
          },
          child: Center(
            child: Center(child: Image.asset("assets/lecon28/$img.png")),
          ),
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
          widget.title + 'Leçon 28',
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
                'ai / ei',
                style: TextStyle(
                    fontSize: 20,
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
                        height: 200,
                        child: Image(
                          image: AssetImage('assets/lecon28/img_1.png'),
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
                            text: "Mél",
                            font: FontWeight.w600,
                            size: 20,
                          ),
                          letters(
                            text: "ai",
                            font: FontWeight.w600,
                            size: 20,
                            color: Colors.red,
                          ),
                          letters(
                            text: "ne",
                            font: FontWeight.w600,
                            size: 20,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          letters(
                            text: "et",
                            font: FontWeight.w600,
                            size: 20,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          letters(
                            text: "Madel",
                            font: FontWeight.w600,
                            size: 20,
                          ),
                          letters(
                            text: "ei",
                            font: FontWeight.w600,
                            size: 20,
                            color: Colors.red,
                          ),
                          letters(
                            text: "ne",
                            font: FontWeight.w600,
                            size: 20,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          letters(
                            text: "sont",
                            font: FontWeight.w600,
                            size: 20,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          letters(
                            text: "des",
                            font: FontWeight.w600,
                            size: 20,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          letters(
                            text: "cousines.",
                            font: FontWeight.w600,
                            size: 20,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        children: <Widget>[
                          letters(
                              text: "Mél",
                              font: FontWeight.w600,
                              size: 20,
                              i: 1),
                          letters(
                              text: "ai",
                              font: FontWeight.w600,
                              size: 20,
                              color: Colors.red,
                              i: 1),
                          letters(
                              text: "ne",
                              font: FontWeight.w600,
                              size: 20,
                              i: 1),
                          SizedBox(
                            width: 100,
                          ),
                          letters(
                              text: "Madel",
                              font: FontWeight.w600,
                              size: 20,
                              i: 2),
                          letters(
                              text: "ei",
                              font: FontWeight.w600,
                              size: 20,
                              color: Colors.red,
                              i: 2),
                          letters(
                              text: "ne",
                              font: FontWeight.w600,
                              size: 20,
                              i: 2),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          letters(
                            text: "l",
                            font: FontWeight.w600,
                            size: 20,
                            i: 3,
                          ),
                          letters(
                            text: "aine",
                            font: FontWeight.w600,
                            size: 20,
                            color: Colors.red,
                            i: 3,
                          ),
                          SizedBox(
                            width: 180,
                          ),
                          letters(
                            text: "l",
                            font: FontWeight.w600,
                            size: 20,
                            i: 4,
                          ),
                          letters(
                              text: "ei",
                              font: FontWeight.w600,
                              size: 20,
                              color: Colors.red,
                              i: 4),
                          letters(
                              text: "ne",
                              font: FontWeight.w600,
                              size: 20,
                              i: 4),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          letters(
                              text: "ai",
                              font: FontWeight.w600,
                              size: 20,
                              color: Colors.red,
                              i: 5),
                          SizedBox(
                            width: 220,
                          ),
                          letters(
                            text: "ei",
                            font: FontWeight.w600,
                            size: 20,
                            color: Colors.red,
                            i: 6,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // les syllabes
            Container(
              margin: EdgeInsets.only(bottom: 80, top: 30, left: 50),
              //width: MediaQuery.of(context).size.width / 2,
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 6,
                        height: MediaQuery.of(context).size.height / 9,
                        child: Card(
                          child: new InkWell(
                            onTap: () {
                              // // Navigator.pushNamed(context, '/lecon1');
                              //print("tapped");
                              player.play(AssetSource('audio/lecon28/ai.mp3'));
                            },
                            child: Center(
                                child: Text('ai',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600))),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 6,
                        height: MediaQuery.of(context).size.height / 9,
                        child: Card(
                          child: new InkWell(
                            onTap: () {
                              // // Navigator.pushNamed(context, '/lecon1');
                              //print("tapped");
                              player.play(AssetSource('audio/lecon28/ai.mp3'));
                            },
                            child: Center(
                                child: Text('Ai',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600))),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 6,
                        height: MediaQuery.of(context).size.height / 9,
                        child: Card(
                          child: new InkWell(
                            onTap: () {
                              // // Navigator.pushNamed(context, '/lecon1');
                              //print("tapped");
                              player.play(AssetSource('audio/lecon28/ei.mp3'));
                            },
                            child: Center(
                                child: Text('ei',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600))),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 6,
                        height: MediaQuery.of(context).size.height / 9,
                        child: Card(
                          child: new InkWell(
                            onTap: () {
                              // // Navigator.pushNamed(context, '/lecon1');
                              //print("tapped");
                              player.play(AssetSource('audio/lecon28/ei.mp3'));
                            },
                            child: Center(
                                child: Text('Ei',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600))),
                          ),
                        ),
                      ),
                      Syllabe(son: 'ai', img: 'ai'),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Syllabe(son: 'ai', img: 'ai_m'),
                      Syllabe(son: 'ei', img: 'ei'),
                      Syllabe(son: 'ei', img: 'ei_m'),
                      Syllabe(son: 'pai', img: 'pai'),
                      Syllabe(son: 'pei', img: 'pei'),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Syllabe(son: 'lai', img: 'lai'),
                      Syllabe(son: 'lei', img: 'lei'),
                      Syllabe(son: 'dai', img: 'dai'),
                      Syllabe(son: 'die', img: 'die'),
                      Syllabe(son: 'gai', img: 'gai'),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Syllabe(son: 'gei', img: 'gei'),
                      Syllabe(son: 'rai', img: 'rai'),
                      Syllabe(son: 'rei', img: 'rei'),
                      Syllabe(son: 'nai', img: 'nai'),
                      Syllabe(son: 'nei', img: 'nei'),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Syllabe(son: 'tai', img: 'tai'),
                      Syllabe(son: 'tei', img: 'tei'),
                      Syllabe(son: 'hai', img: 'hai'),
                      Syllabe(son: 'hei', img: 'hei'),
                      Syllabe(son: 'sai', img: 'sai'),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Syllabe(son: 'sei', img: 'sei'),
                      Syllabe(son: 'mai', img: 'mai'),
                      Syllabe(son: 'guai', img: 'guai'),
                      Syllabe(son: 'guei', img: 'guei'),
                      Syllabe(son: 'mei', img: 'mei'),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Syllabe(son: 'dei', img: 'dei'),
                      Syllabe(son: 'bai', img: 'bai'),
                      Syllabe(son: 'bei', img: 'bei'),
                      Syllabe(son: 'fai', img: 'fai'),
                      Syllabe(son: 'fei', img: 'fei'),
                    ],
                  ),
                ],
              ),
            ),
            // les deux images d'exemples
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 300,
                  child: InkWell(
                    onTap: () {
                      extraHilght(7);
                      player.play(AssetSource('audio/lecon28/balai.mp3'));
                    },
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage('assets/lecon28/balai.png'),
                          width: 300,
                          height: 200,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            letters(
                              text: "Un ",
                              i: 7,
                            ),
                            letters(
                              text: "bal",
                              i: 7,
                            ),
                            letters(
                              text: "ai",
                              color: Colors.red,
                              font: FontWeight.w600,
                              i: 7,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                SizedBox(
                  height: 300,
                  child: InkWell(
                    onTap: () {
                      extraHilght(8);
                      player.play(AssetSource('audio/lecon28/peigne.mp3'));
                    },
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage('assets/lecon28/peigne.png'),
                          width: 300,
                          height: 200,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            letters(
                              text: "un ",
                              i: 8,
                            ),
                            letters(
                              text: "p",
                              i: 8,
                            ),
                            letters(
                                text: "ei",
                                color: Colors.red,
                                font: FontWeight.w600,
                                i: 8),
                            letters(text: "gne", i: 8),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),

            // le text de la fin
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 50, bottom: 50),
                  child: InkWell(
                    onTap: () {
                      extraHilght(9);
                      player.play(AssetSource('audio/lecon28/text.mp3'));
                    },
                    child: Column(children: [
                      letters(
                          text:
                              "Mélaine est la fille de la soeur de Madeleine. Mélaine et Madeleine",
                          i: 9),
                      letters(
                          text:
                              "sont des cousines. Elles s'entendent très bien et partagent les tâches",
                          i: 9),
                      letters(
                          text:
                              "ménagères. Elles fréquentent le lycée de Songon. Chaque soir,",
                          i: 9),
                      letters(
                          text:
                              "elles étudient ensemble et s'entraident. Elles font leurs courses",
                          i: 9),
                      letters(
                          text:
                              "ensemble tous les week-ends. Elles sont des cousines exemplaires.",
                          i: 9),
                    ]),
                  ),
                ),
              ],
            ),

            //---------------- Les phrases de fin ------------
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
