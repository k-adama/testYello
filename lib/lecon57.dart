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

class Lecon57 extends StatefulWidget {
  const Lecon57({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<Lecon57> createState() => _Lecon57State();
}

class _Lecon57State extends State<Lecon57> {
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

  String audio0 = 'audio/lecon57/phrase_0.mp3';
  String audio1 = 'audio/lecon57/yasmina.mp3';
  String audio2 = 'audio/lecon57/voyage.mp3';
  String audio3 = 'audio/lecon57/yamoussoukro.mp3';
  String audio4 = 'audio/lecon57/yasmin.mp3';
  String audio5 = 'audio/lecon57/voya.mp3';
  String audio6 = 'audio/lecon57/yamousso.mp3';
  String audio7 = 'audio/lecon57/yas.mp3';
  String audio8 = 'audio/lecon57/ya.mp3';
  String audio9 = 'audio/lecon57/yam.mp3';
  String audio10 = 'audio/lecon57/y.mp3';

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
    player.play(AssetSource('audio/lecon57/$thesound.mp3'));
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
      } else if (state == 10 || state == 11 || state == 12) {
        theaudio = audio8;
      } else if (state == 13 || state == 14 || state == 15) {
        theaudio = audio10;
      } else {
        theaudio = audio0;
      }
      //player.setAsset(theaudio);
      player.play(AssetSource(theaudio));
      try {
        if (state > 15) {
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
            player.play(AssetSource('audio/lecon57/$son.mp3'));
          },
          child: Center(
            child: Center(child: Image.asset("assets/lecon57/$img.png")),
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
          widget.title + 'Leçon 57',
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
                'y / Y',
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
                          image: AssetImage('assets/lecon57/img_1.png'),
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
                            text: "Y",
                            font: FontWeight.w600,
                            size: 17,
                            color: Colors.red,
                          ),
                          letters(
                            text: "asmina effectue un vo",
                            font: FontWeight.w600,
                            size: 17,
                          ),
                          letters(
                            text: "y",
                            font: FontWeight.w600,
                            size: 17,
                            color: Colors.red,
                          ),
                          letters(
                            text: "age à ",
                            font: FontWeight.w600,
                            size: 17,
                          ),
                          letters(
                            text: "Y",
                            font: FontWeight.w600,
                            size: 17,
                            color: Colors.red,
                          ),
                          letters(
                            text: "amoussoukro.",
                            font: FontWeight.w600,
                            size: 16,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: <Widget>[
                          letters(
                            text: "Y",
                            font: FontWeight.w600,
                            size: 20,
                            color: Colors.red,
                            i: 1,
                          ),
                          letters(
                            text: "asmina",
                            font: FontWeight.w600,
                            size: 20,
                            i: 1,
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          letters(
                            text: "vo",
                            font: FontWeight.w600,
                            size: 18,
                            i: 2,
                          ),
                          letters(
                            text: "y",
                            font: FontWeight.w600,
                            size: 18,
                            color: Colors.red,
                            i: 2,
                          ),
                          letters(
                            text: "age",
                            font: FontWeight.w600,
                            size: 20,
                            i: 2,
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          letters(
                            text: "Y",
                            font: FontWeight.w600,
                            size: 18,
                            color: Colors.red,
                            i: 3,
                          ),
                          letters(
                            text: "amoussoukro",
                            font: FontWeight.w600,
                            size: 18,
                            i: 3,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          letters(
                            text: "Y",
                            font: FontWeight.w600,
                            size: 20,
                            color: Colors.red,
                            i: 4,
                          ),
                          letters(
                            text: "asmin",
                            font: FontWeight.w600,
                            size: 20,
                            i: 4,
                          ),
                          SizedBox(
                            width: 90,
                          ),
                          letters(
                            text: "vo",
                            font: FontWeight.w600,
                            size: 20,
                            i: 5,
                          ),
                          letters(
                            text: "y",
                            font: FontWeight.w600,
                            size: 20,
                            color: Colors.red,
                            i: 5,
                          ),
                          letters(
                            text: "a",
                            font: FontWeight.w600,
                            size: 20,
                            i: 5,
                          ),
                          SizedBox(
                            width: 70,
                          ),
                          letters(
                            text: "Y",
                            font: FontWeight.w600,
                            size: 20,
                            color: Colors.red,
                            i: 6,
                          ),
                          letters(
                            text: "amousso",
                            font: FontWeight.w600,
                            size: 20,
                            i: 6,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          letters(
                            text: "Y",
                            font: FontWeight.w600,
                            size: 20,
                            color: Colors.red,
                            i: 7,
                          ),
                          letters(
                            text: "as",
                            font: FontWeight.w600,
                            size: 20,
                            i: 7,
                          ),
                          SizedBox(
                            width: 130,
                          ),
                          letters(
                            text: "y",
                            font: FontWeight.w600,
                            size: 20,
                            color: Colors.red,
                            i: 8,
                          ),
                          letters(
                            text: "a",
                            font: FontWeight.w600,
                            size: 20,
                            i: 8,
                          ),
                          SizedBox(
                            width: 100,
                          ),
                          letters(
                            text: "Y",
                            font: FontWeight.w600,
                            size: 20,
                            color: Colors.red,
                            i: 9,
                          ),
                          letters(
                            text: "am",
                            font: FontWeight.w600,
                            size: 20,
                            i: 9,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          letters(
                            text: "Y",
                            font: FontWeight.w600,
                            size: 20,
                            color: Colors.red,
                            i: 10,
                          ),
                          letters(
                            text: "a",
                            font: FontWeight.w600,
                            size: 20,
                            i: 10,
                          ),
                          SizedBox(
                            width: 150,
                          ),
                          letters(
                            text: "y",
                            font: FontWeight.w600,
                            size: 20,
                            color: Colors.red,
                            i: 11,
                          ),
                          letters(
                            text: "a",
                            font: FontWeight.w600,
                            size: 20,
                            i: 11,
                          ),
                          SizedBox(
                            width: 90,
                          ),
                          letters(
                            text: "Y",
                            font: FontWeight.w600,
                            size: 20,
                            color: Colors.red,
                            i: 12,
                          ),
                          letters(
                            text: "a",
                            font: FontWeight.w600,
                            size: 20,
                            i: 12,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          letters(
                            text: "Y",
                            font: FontWeight.w600,
                            size: 20,
                            color: Colors.red,
                            i: 13,
                          ),
                          SizedBox(
                            width: 170,
                          ),
                          letters(
                            text: "y",
                            font: FontWeight.w600,
                            size: 20,
                            color: Colors.red,
                            i: 14,
                          ),
                          SizedBox(
                            width: 100,
                          ),
                          letters(
                            text: "Y",
                            font: FontWeight.w600,
                            size: 20,
                            color: Colors.red,
                            i: 15,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
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
                              player.play(AssetSource('audio/lecon57/y.mp3'));
                            },
                            child: Center(
                                child: Text('y',
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
                              player.play(AssetSource('audio/lecon57/y.mp3'));
                            },
                            child: Center(
                                child: Text('Y',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600))),
                          ),
                        ),
                      ),
                      Syllabe(son: 'y', img: 'y'),
                      Syllabe(son: 'y', img: 'y_m'),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Syllabe(son: 'ya', img: 'ya'),
                      Syllabe(son: 'yo', img: 'yo'),
                      Syllabe(son: 'yu', img: 'yu'),
                      Syllabe(son: 'yi', img: 'yi'),
                      Syllabe(son: 'you', img: 'you'),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Syllabe(son: 'yon', img: 'yon'),
                      Syllabe(son: 'yai', img: 'yai'),
                      Syllabe(son: 'yan', img: 'yan'),
                      Syllabe(son: 'yen', img: 'yen'),
                      Syllabe(son: 'yem', img: 'yem'),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Syllabe(son: 'yin', img: 'yin'),
                      Syllabe(son: 'yom', img: 'yom'),
                      Syllabe(son: 'yoi', img: 'yoi'),
                      Syllabe(son: 'yé', img: 'yé'),
                      Syllabe(son: 'yè', img: 'yè'),
                    ],
                  ),
                  Row(
                    children: [
                      Syllabe(son: 'ye', img: 'ye'),
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
                      extraHilght(8);
                      player.play(AssetSource('audio/lecon57/duyaourt.mp3'));
                    },
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage('assets/lecon57/yaourt.png'),
                          width: 300,
                          height: 200,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            letters(
                              text: "Du ",
                              i: 8,
                            ),
                            letters(
                                text: "ya",
                                color: Colors.red,
                                font: FontWeight.w600,
                                i: 8),
                            letters(
                              text: "ourt",
                              i: 8,
                            ),
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
                      player.play(AssetSource('audio/lecon57/text.mp3'));
                    },
                    child: Column(children: [
                      letters(
                          text:
                              "Yasmine est une femme d'affaires. Elle effectue de",
                          i: 9),
                      letters(
                          text:
                              "nombreux voyages à travers la Côte d’Ivoire. Pour bien suivre ",
                          i: 9),
                      letters(
                          text:
                              "ses affaires, chaque semaine elle effectue un voyage à",
                          i: 9),
                      letters(
                          text:
                              "Yamoussoukro. La durée du trajet d’Abidjan à Yamoussoukro",
                          i: 9),
                      letters(text: "en avion est de 45 minutes. ", i: 9),
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
