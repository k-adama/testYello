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

class Lecon41 extends StatefulWidget {
  const Lecon41({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<Lecon41> createState() => _Lecon41State();
}

class _Lecon41State extends State<Lecon41> {
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

  String audio0 = 'audio/lecon41/phrase_0.mp3';
  String audio1 = 'audio/lecon41/sylvain.mp3';
  String audio2 = 'audio/lecon41/matin.mp3';
  String audio3 = 'audio/lecon41/vain.mp3';
  String audio4 = 'audio/lecon41/tin.mp3';
  String audio5 = 'audio/lecon41/ain.mp3';
  String audio6 = 'audio/lecon41/in.mp3';

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
    player.play(AssetSource('audio/lecon41/$thesound.mp3'));
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
            player.play(AssetSource('audio/lecon41/$son.mp3'));
          },
          child: Center(
            child: Center(child: Image.asset("assets/lecon41/$img.png")),
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
          widget.title + 'Leçon 41',
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
                'in / ain / ein',
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
                          image: AssetImage('assets/lecon41/img_1.png'),
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
                            text: "Sylv",
                            font: FontWeight.w600,
                            size: 20,
                          ),
                          letters(
                            text: "ain",
                            font: FontWeight.w600,
                            size: 20,
                            color: Colors.red,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          letters(
                            text: "livre le p",
                            font: FontWeight.w600,
                            size: 20,
                          ),
                          letters(
                            text: "ain",
                            font: FontWeight.w600,
                            size: 20,
                            color: Colors.red,
                          ),
                          letters(
                            text: " tôt le",
                            font: FontWeight.w600,
                            size: 20,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          letters(
                            text: "mat",
                            font: FontWeight.w600,
                            size: 20,
                          ),
                          letters(
                            text: "in.",
                            font: FontWeight.w600,
                            size: 20,
                            color: Colors.red,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        children: <Widget>[
                          letters(
                            text: "Sylv",
                            font: FontWeight.w600,
                            size: 20,
                            i: 1,
                          ),
                          letters(
                            text: "ain",
                            font: FontWeight.w600,
                            size: 20,
                            color: Colors.red,
                            i: 1,
                          ),
                          SizedBox(
                            width: 110,
                          ),
                          letters(
                            text: "mat",
                            font: FontWeight.w600,
                            size: 20,
                            i: 2,
                          ),
                          letters(
                            text: "in.",
                            font: FontWeight.w600,
                            size: 20,
                            color: Colors.red,
                            i: 2,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          letters(
                            text: "v",
                            font: FontWeight.w600,
                            size: 20,
                            i: 3,
                          ),
                          letters(
                            text: "ain",
                            font: FontWeight.w600,
                            size: 20,
                            color: Colors.red,
                            i: 3,
                          ),
                          SizedBox(
                            width: 180,
                          ),
                          letters(
                            text: "t",
                            font: FontWeight.w600,
                            size: 20,
                            i: 4,
                          ),
                          letters(
                              text: "in",
                              font: FontWeight.w600,
                              size: 20,
                              color: Colors.red,
                              i: 4),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          letters(
                              text: "ain",
                              font: FontWeight.w600,
                              size: 20,
                              color: Colors.red,
                              i: 5),
                          SizedBox(
                            width: 200,
                          ),
                          letters(
                            text: "in",
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
                              player.play(AssetSource('audio/lecon41/in.mp3'));
                            },
                            child: Center(
                                child: Text('in',
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
                              player.play(AssetSource('audio/lecon41/ain.mp3'));
                            },
                            child: Center(
                                child: Text('ain',
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
                              player.play(AssetSource('audio/lecon41/ein.mp3'));
                            },
                            child: Center(
                                child: Text('ein',
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
                              player.play(AssetSource('audio/lecon41/in.mp3'));
                            },
                            child: Center(
                                child: Text('IN',
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
                              player.play(AssetSource('audio/lecon41/ain.mp3'));
                            },
                            child: Center(
                                child: Text('AIN',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600))),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
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
                              player.play(AssetSource('audio/lecon41/ein.mp3'));
                            },
                            child: Center(
                                child: Text('EIN',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600))),
                          ),
                        ),
                      ),
                      Syllabe(son: 'in', img: 'in'),
                      Syllabe(son: 'ain', img: 'ain'),
                      Syllabe(son: 'ein', img: 'ein'),
                      Syllabe(son: 'in', img: 'in_m'),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Syllabe(son: 'ain', img: 'ain_m'),
                      Syllabe(son: 'ein', img: 'ein_m'),
                      Syllabe(son: 'pin', img: 'pin'),
                      Syllabe(son: 'pain', img: 'pain'),
                      Syllabe(son: 'pein', img: 'pein'),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Syllabe(son: 'lin', img: 'lin'),
                      Syllabe(son: 'lain', img: 'lain'),
                      Syllabe(son: 'lein', img: 'lein'),
                      Syllabe(son: 'vin', img: 'vin'),
                      Syllabe(son: 'vain', img: 'vain'),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Syllabe(son: 'vein', img: 'vein'),
                      Syllabe(son: 'bin', img: 'bin'),
                      Syllabe(son: 'bain', img: 'bain'),
                      Syllabe(son: 'bein', img: 'bein'),
                      Syllabe(son: 'gin', img: 'gin'),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Syllabe(son: 'gain', img: 'gain'),
                      Syllabe(son: 'gein', img: 'gein'),
                      Syllabe(son: 'fin', img: 'fin'),
                      Syllabe(son: 'fain', img: 'fain'),
                      Syllabe(son: 'fein', img: 'fein'),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Syllabe(son: 'sin', img: 'sin'),
                      Syllabe(son: 'sain', img: 'sain'),
                      Syllabe(son: 'sein', img: 'sein'),
                      Syllabe(son: 'tin', img: 'tin'),
                      Syllabe(son: 'tain', img: 'tain'),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Syllabe(son: 'tein', img: 'tein'),
                      Syllabe(son: 'hin', img: 'hin'),
                      Syllabe(son: 'gain', img: 'gain'),
                      Syllabe(son: 'hein', img: 'hein'),
                      Syllabe(son: 'hain', img: 'hain'),
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
                      player.play(AssetSource('audio/lecon41/train.mp3'));
                    },
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage('assets/lecon41/train.png'),
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
                              text: "tr",
                              i: 8,
                            ),
                            letters(
                                text: "ain",
                                color: Colors.red,
                                font: FontWeight.w600,
                                i: 8),
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
                      player.play(AssetSource('audio/lecon41/text.mp3'));
                    },
                    child: Column(children: [
                      letters(
                          text:
                              "Sylvain est un livreur de marchandises. Tôt le matin, il livre le",
                          i: 9),
                      letters(
                          text:
                              "pain, le beurre et le journal sur sa moto au kiosque du village.",
                          i: 9),
                      letters(
                          text:
                              "Il est très apprécié de tous par sa gentillesse et son respect. Il",
                          i: 9),
                      letters(
                          text:
                              "pratique cette activité depuis quelques années et il s'occupe bien ",
                          i: 9),
                      letters(text: "de sa famille.", i: 9),
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
