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

class Lecon30 extends StatefulWidget {
  const Lecon30({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<Lecon30> createState() => _Lecon30State();
}

class _Lecon30State extends State<Lecon30> {
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

  String audio0 = 'audio/lecon30/salimPhrase.mp3';
  String audio1 = 'audio/lecon30/prix.mp3';
  // String audio2 = 'audio/lecon6/linge.mp3';
  // String audio3 = 'audio/lecon6/li.mp3';
  // String audio4 = 'audio/lecon6/l.mp3';
  // String audio5 = 'audio/lecon6/grand_l.mp3';
  // String audio6 = 'audio/lecon6/lo.mp3';
  // String audio7 = 'audio/lecon6/li.mp3';
  // String audio8 = 'audio/lecon6/la.mp3';
  // String audio9 = 'audio/lecon6/lu.mp3';
  // String audio10 = 'audio/lecon6/loi.mp3';
  // String audio11 = 'audio/lecon6/lom.mp3';
  // String audio12 = 'audio/lecon6/le.mp3';
  // String audio13 = 'audio/lecon6/lb.mp3';
  // String audio14 = 'audio/lecon6/lc.mp3';
  // String audio15 = 'audio/lecon6/lai.mp3';
  // String audio16 = 'audio/lecon6/lan.mp3';
  // String audio17 = 'audio/lecon6/lou.mp3';
  // String audio18 = 'audio/lecon6/lui.mp3';
  // String audio19 = 'audio/lecon6/ler.mp3';
  // String audio20 = 'audio/lecon6/legume.mp3';
  // String audio21 = 'audio/lecon6/lame.mp3';
  // String audio22 = 'audio/lecon6/text.mp3';

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
    player.play(AssetSource('audio/lecon6/$thesound.mp3'));
  }

  void RepeatVoice() {
    player.play(AssetSource(theaudio));
  }

  void extraHilght(int i) async {
    setState(() {
      if (i == 7) {
        colorArray[7] = Colors.yellowAccent;
        colorArray[2] = Colors.white;
        colorArray[3] = Colors.white;
        colorArray[4] = Colors.white;
        colorArray[5] = Colors.white;
        colorArray[6] = Colors.white;
        colorArray[8] = Colors.white;
        colorArray[9] = Colors.white;
        colorArray[10] = Colors.white;
        colorArray[11] = Colors.white;
        colorArray[12] = Colors.white;
        colorArray[13] = Colors.white;
        colorArray[14] = Colors.white;
        colorArray[15] = Colors.white;
        colorArray[16] = Colors.white;
      } else if (i == 8) {
        colorArray[7] = Colors.white;
        colorArray[8] = Colors.yellowAccent;
        colorArray[9] = Colors.white;
        colorArray[2] = Colors.white;
        colorArray[3] = Colors.white;
        colorArray[4] = Colors.white;
        colorArray[5] = Colors.white;
        colorArray[6] = Colors.white;
        colorArray[10] = Colors.white;
        colorArray[11] = Colors.white;
        colorArray[12] = Colors.white;
        colorArray[13] = Colors.white;
        colorArray[14] = Colors.white;
        colorArray[15] = Colors.white;
        colorArray[16] = Colors.white;
      } else if (i == 16) {
        colorArray[7] = Colors.white;
        colorArray[8] = Colors.white;
        colorArray[16] = Colors.yellowAccent;
        colorArray[9] = Colors.white;
        colorArray[2] = Colors.white;
        colorArray[3] = Colors.white;
        colorArray[4] = Colors.white;
        colorArray[5] = Colors.white;
        colorArray[6] = Colors.white;
        colorArray[10] = Colors.white;
        colorArray[11] = Colors.white;
        colorArray[12] = Colors.white;
        colorArray[13] = Colors.white;
        colorArray[14] = Colors.white;
        colorArray[15] = Colors.white;
      } else if (i == 2) {
        colorArray[7] = Colors.white;
        colorArray[8] = Colors.white;
        colorArray[2] = Colors.yellowAccent;
        colorArray[9] = Colors.white;
        colorArray[3] = Colors.white;
        colorArray[4] = Colors.white;
        colorArray[5] = Colors.white;
        colorArray[6] = Colors.white;
        colorArray[10] = Colors.white;
        colorArray[11] = Colors.white;
        colorArray[12] = Colors.white;
        colorArray[13] = Colors.white;
        colorArray[14] = Colors.white;
        colorArray[15] = Colors.white;
        colorArray[16] = Colors.white;
      } else if (i == 3) {
        colorArray[7] = Colors.white;
        colorArray[8] = Colors.white;
        colorArray[3] = Colors.yellowAccent;
        colorArray[9] = Colors.white;
        colorArray[2] = Colors.white;
        colorArray[4] = Colors.white;
        colorArray[5] = Colors.white;
        colorArray[6] = Colors.white;
        colorArray[10] = Colors.white;
        colorArray[11] = Colors.white;
        colorArray[12] = Colors.white;
        colorArray[13] = Colors.white;
        colorArray[14] = Colors.white;
        colorArray[15] = Colors.white;
        colorArray[16] = Colors.white;
      } else if (i == 4) {
        colorArray[7] = Colors.white;
        colorArray[8] = Colors.white;
        colorArray[4] = Colors.yellowAccent;
        colorArray[9] = Colors.white;
        colorArray[2] = Colors.white;
        colorArray[3] = Colors.white;
        colorArray[5] = Colors.white;
        colorArray[6] = Colors.white;
        colorArray[10] = Colors.white;
        colorArray[11] = Colors.white;
        colorArray[12] = Colors.white;
        colorArray[13] = Colors.white;
        colorArray[14] = Colors.white;
        colorArray[15] = Colors.white;
        colorArray[16] = Colors.white;
      } else if (i == 5) {
        colorArray[7] = Colors.white;
        colorArray[8] = Colors.white;
        colorArray[5] = Colors.yellowAccent;
        colorArray[9] = Colors.white;
        colorArray[2] = Colors.white;
        colorArray[3] = Colors.white;
        colorArray[4] = Colors.white;
        colorArray[6] = Colors.white;
        colorArray[10] = Colors.white;
        colorArray[11] = Colors.white;
        colorArray[12] = Colors.white;
        colorArray[13] = Colors.white;
        colorArray[14] = Colors.white;
        colorArray[15] = Colors.white;
        colorArray[16] = Colors.white;
      } else if (i == 6) {
        colorArray[7] = Colors.white;
        colorArray[8] = Colors.white;
        colorArray[6] = Colors.yellowAccent;
        colorArray[9] = Colors.white;
        colorArray[2] = Colors.white;
        colorArray[3] = Colors.white;
        colorArray[4] = Colors.white;
        colorArray[5] = Colors.white;
        colorArray[10] = Colors.white;
        colorArray[11] = Colors.white;
        colorArray[12] = Colors.white;
        colorArray[13] = Colors.white;
        colorArray[14] = Colors.white;
        colorArray[15] = Colors.white;
        colorArray[16] = Colors.white;
      } else if (i == 10) {
        colorArray[7] = Colors.white;
        colorArray[8] = Colors.white;
        colorArray[10] = Colors.yellowAccent;
        colorArray[9] = Colors.white;
        colorArray[2] = Colors.white;
        colorArray[3] = Colors.white;
        colorArray[4] = Colors.white;
        colorArray[5] = Colors.white;
        colorArray[6] = Colors.white;
        colorArray[11] = Colors.white;
        colorArray[12] = Colors.white;
        colorArray[13] = Colors.white;
        colorArray[14] = Colors.white;
        colorArray[15] = Colors.white;
        colorArray[16] = Colors.white;
      } else if (i == 11) {
        colorArray[7] = Colors.white;
        colorArray[8] = Colors.white;
        colorArray[11] = Colors.yellowAccent;
        colorArray[9] = Colors.white;
        colorArray[2] = Colors.white;
        colorArray[3] = Colors.white;
        colorArray[4] = Colors.white;
        colorArray[5] = Colors.white;
        colorArray[6] = Colors.white;
        colorArray[10] = Colors.white;
        colorArray[12] = Colors.white;
        colorArray[13] = Colors.white;
        colorArray[14] = Colors.white;
        colorArray[15] = Colors.white;
        colorArray[16] = Colors.white;
      } else if (i == 12) {
        colorArray[7] = Colors.white;
        colorArray[8] = Colors.white;
        colorArray[12] = Colors.yellowAccent;
        colorArray[9] = Colors.white;
        colorArray[2] = Colors.white;
        colorArray[3] = Colors.white;
        colorArray[4] = Colors.white;
        colorArray[5] = Colors.white;
        colorArray[6] = Colors.white;
        colorArray[10] = Colors.white;
        colorArray[11] = Colors.white;
        colorArray[13] = Colors.white;
        colorArray[14] = Colors.white;
        colorArray[15] = Colors.white;
        colorArray[16] = Colors.white;
      } else if (i == 13) {
        colorArray[7] = Colors.white;
        colorArray[8] = Colors.white;
        colorArray[13] = Colors.yellowAccent;
        colorArray[9] = Colors.white;
        colorArray[2] = Colors.white;
        colorArray[3] = Colors.white;
        colorArray[4] = Colors.white;
        colorArray[5] = Colors.white;
        colorArray[6] = Colors.white;
        colorArray[10] = Colors.white;
        colorArray[11] = Colors.white;
        colorArray[12] = Colors.white;
        colorArray[14] = Colors.white;
        colorArray[15] = Colors.white;
        colorArray[16] = Colors.white;
      } else if (i == 14) {
        colorArray[7] = Colors.white;
        colorArray[8] = Colors.white;
        colorArray[14] = Colors.yellowAccent;
        colorArray[9] = Colors.white;
        colorArray[2] = Colors.white;
        colorArray[3] = Colors.white;
        colorArray[4] = Colors.white;
        colorArray[5] = Colors.white;
        colorArray[6] = Colors.white;
        colorArray[10] = Colors.white;
        colorArray[11] = Colors.white;
        colorArray[12] = Colors.white;
        colorArray[13] = Colors.white;
        colorArray[15] = Colors.white;
        colorArray[16] = Colors.white;
      } else if (i == 15) {
        colorArray[7] = Colors.white;
        colorArray[8] = Colors.white;
        colorArray[15] = Colors.yellowAccent;
        colorArray[9] = Colors.white;
        colorArray[2] = Colors.white;
        colorArray[3] = Colors.white;
        colorArray[4] = Colors.white;
        colorArray[5] = Colors.white;
        colorArray[6] = Colors.white;
        colorArray[10] = Colors.white;
        colorArray[11] = Colors.white;
        colorArray[12] = Colors.white;
        colorArray[13] = Colors.white;
        colorArray[14] = Colors.white;
        colorArray[16] = Colors.white;
      } else {
        colorArray[7] = Colors.white;
        colorArray[8] = Colors.white;
        colorArray[9] = Colors.yellowAccent;
        colorArray[2] = Colors.white;
        colorArray[3] = Colors.white;
        colorArray[4] = Colors.white;
        colorArray[5] = Colors.white;
        colorArray[6] = Colors.white;
        colorArray[10] = Colors.white;
        colorArray[11] = Colors.white;
        colorArray[12] = Colors.white;
        colorArray[13] = Colors.white;
        colorArray[14] = Colors.white;
        colorArray[15] = Colors.white;
        colorArray[16] = Colors.white;
      }
    });
  }

  void changeHilght() async {
    setState(() {
      if (state == 0) {
        theaudio = audio0;
      } else if (state == 1) {
        theaudio = audio1;
      }
      // else if (state == 2) {
      //   theaudio = audio2;
      // } else if (state == 3) {
      //   theaudio = audio3;
      // } else if (state == 4) {
      //   theaudio = audio4;
      // } else if (state == 5) {
      //   theaudio = audio5;
      // } else if (state == 6) {
      //   theaudio = audio6;
      // }
      else {
        theaudio = audio0;
      }
      //player.setAsset(theaudio);
      player.play(AssetSource(theaudio));
      try {
        if (state > 1) {
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
          widget.title + 'Leçon 30',
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
                'Les nombres à 2 chiffres',
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
                        height: 200,
                        child: Image(
                          image: AssetImage('assets/lecon30/lecon30.png'),
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
                            text: "Salimata est en pèlerinage à ",
                            font: FontWeight.w600,
                            size: 25,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          letters(
                            text: "la Mecque. Elle ne comprend ",
                            font: FontWeight.w600,
                            size: 25,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          letters(
                            text: "pas la langue arabe. Elle veut ",
                            font: FontWeight.w600,
                            size: 25,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          letters(
                            text: "acheter un joli boubou. Le ",
                            font: FontWeight.w600,
                            size: 25,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          letters(
                            text: "vendeur fait ",
                            font: FontWeight.w600,
                            size: 25,
                          ),
                          letters(
                              text: "2 ",
                              font: FontWeight.w600,
                              size: 25,
                              color: Colors.red),
                          letters(
                            text: "claquements ",
                            font: FontWeight.w600,
                            size: 25,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          letters(
                            text: "de mains et montre ",
                            font: FontWeight.w600,
                            size: 25,
                          ),
                          letters(
                              text: "2 ",
                              font: FontWeight.w600,
                              size: 25,
                              color: Colors.red),
                          letters(
                            text: "doigts.",
                            font: FontWeight.w600,
                            size: 25,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: <Widget>[
                          letters(
                            text: "Le boubou coûte ",
                            font: FontWeight.w600,
                            size: 20,
                            i: 1,
                          ),
                          letters(
                              text: "22 ",
                              font: FontWeight.w600,
                              size: 25,
                              i: 1,
                              color: Colors.red),
                          letters(
                            text: "rials.",
                            font: FontWeight.w600,
                            size: 20,
                            i: 1,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // les syllabes
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 50, bottom: 10),
                  child: InkWell(
                    onTap: () {
                      extraHilght(16);
                      player.play(AssetSource('audio/lecon30/nb.mp3'));
                    },
                    child: Column(children: [
                      letters(
                          text:
                              "NB : Chaque chiffre a une chambre. Une maison ",
                          i: 16),
                      letters(
                          text:
                              "comporte trois chambres. Pour écrire le nombre, il faut ",
                          i: 16),
                      letters(
                          text:
                              "mettre un chiffre dans chaque chambre. Les nombres ",
                          i: 16),
                      letters(
                          text: "sont disposés en famille de trois chiffres.",
                          i: 16),
                    ]),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            // les deux images d'exemples
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 300,
                  child: InkWell(
                    onTap: () {
                      extraHilght(2);
                      player.play(AssetSource('audio/lecon30/claquement.mp3'));
                    },
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage('assets/lecon30/claqu.png'),
                          width: 300,
                          height: 200,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 300,
                  child: InkWell(
                    onTap: () {
                      extraHilght(3);
                      player.play(AssetSource('audio/lecon30/doigts.mp3'));
                    },
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage('assets/lecon30/doig.png'),
                          width: 300,
                          height: 200,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 300,
                  child: InkWell(
                    onTap: () {
                      extraHilght(4);
                      player.play(AssetSource('audio/lecon30/class.mp3'));
                    },
                    child: Column(
                      children: [
                        Row(
                          children: [
                            letters(
                              text:
                                  "Exercices en classe (sur les ardoises et au tableau) ",
                              i: 7,
                            ),
                          ],
                        ),
                        Image(
                          image: AssetImage('assets/lecon30/im2.png'),
                          width: 500,
                          height: 200,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 50, bottom: 10),
                  child: InkWell(
                    onTap: () {
                      extraHilght(5);
                      player.play(AssetSource('audio/lecon30/maison.mp3'));
                    },
                    child: Column(children: [
                      letters(text: "EXERCICE DE MAISON :", i: 5),
                      letters(text: "Reproduisez dans vos cahiers : ", i: 5),
                    ]),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 50, bottom: 10),
                  child: InkWell(
                    onTap: () {
                      extraHilght(6);
                      player.play(AssetSource('audio/lecon30/un.mp3'));
                    },
                    child: Column(children: [
                      letters(text: "1- 8 claquements + 9 doigts", i: 6),
                    ]),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 50, bottom: 10),
                  child: InkWell(
                    onTap: () {
                      extraHilght(7);
                      player.play(AssetSource('audio/lecon30/deux.mp3'));
                    },
                    child: Column(children: [
                      letters(text: "2- 1 claquements + 1 doigts", i: 7),
                    ]),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 50, bottom: 10),
                  child: InkWell(
                    onTap: () {
                      extraHilght(8);
                      player.play(AssetSource('audio/lecon30/trois.mp3'));
                    },
                    child: Column(children: [
                      letters(text: "3- 2 claquements + 0 doigts", i: 8),
                    ]),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 50, bottom: 10),
                  child: InkWell(
                    onTap: () {
                      extraHilght(9);
                      player.play(AssetSource('audio/lecon30/quatre.mp3'));
                    },
                    child: Column(children: [
                      letters(text: "4- 0 claquements + 1 doigts", i: 9),
                    ]),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 50, bottom: 10),
                  child: InkWell(
                    onTap: () {
                      extraHilght(10);
                      player.play(AssetSource('audio/lecon30/cinq.mp3'));
                    },
                    child: Column(children: [
                      letters(text: "5- 1 claquements + 3 doigts", i: 10),
                    ]),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 50, bottom: 10),
                  child: InkWell(
                    onTap: () {
                      extraHilght(11);
                      player.play(AssetSource('audio/lecon30/six.mp3'));
                    },
                    child: Column(children: [
                      letters(text: "6- 7 claquements + 8 doigts", i: 11),
                    ]),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 50, bottom: 10),
                  child: InkWell(
                    onTap: () {
                      extraHilght(12);
                      player.play(AssetSource('audio/lecon30/sept.mp3'));
                    },
                    child: Column(children: [
                      letters(text: "7- 5 claquements + 0 doigts", i: 12),
                    ]),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 50, bottom: 10),
                  child: InkWell(
                    onTap: () {
                      extraHilght(13);
                      player.play(AssetSource('audio/lecon30/huit.mp3'));
                    },
                    child: Column(children: [
                      letters(text: "8- 2 claquements + 4 doigts", i: 13),
                    ]),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 50, bottom: 10),
                  child: InkWell(
                    onTap: () {
                      extraHilght(14);
                      player.play(AssetSource('audio/lecon30/neuf.mp3'));
                    },
                    child: Column(children: [
                      letters(text: "9- 6 claquements + 5 doigts", i: 14),
                    ]),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 50, bottom: 10),
                  child: InkWell(
                    onTap: () {
                      extraHilght(15);
                      player.play(AssetSource('audio/lecon30/dix.mp3'));
                    },
                    child: Column(children: [
                      letters(text: "10- 8 claquements + 1 doigts", i: 15),
                    ]),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
