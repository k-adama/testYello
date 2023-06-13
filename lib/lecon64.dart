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

class Lecon64 extends StatefulWidget {
  const Lecon64({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<Lecon64> createState() => _Lecon64State();
}

class _Lecon64State extends State<Lecon64> {
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

  String audio0 = 'audio/lecon64/l64.mp3';
  String audio1 = 'audio/lecon64/blandine.mp3';
  String audio2 = 'audio/lecon64/duplacali.mp3';
  String audio3 = 'audio/lecon64/blan.mp3';
  String audio4 = 'audio/lecon64/placali.mp3';
  String audio5 = 'audio/lecon64/bl.mp3';
  String audio6 = 'audio/lecon64/pl.mp3';

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
    player.play(AssetSource('audio/lecon64/$thesound.mp3'));
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
        if (state > 7) {
          state = 0;
        }
        for (int i = 0; i < 7; i++) {
          if (state == i) {
            colorArray[i] = Colors.yellowAccent;
          } else {
            colorArray[i] = Colors.white;
          }
        }

        state = state + 1;
        print(state);
      } on Exception catch (_) {
        print('error');
      }
    });
    print(theaudio);
  }

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 40,
        backgroundColor: '#fcca0c'.toColor6(),
        title: Text(
          widget.title + 'Leçon 64',
          style:
              TextStyle(color: Color(0xff000000), fontStyle: FontStyle.italic),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                'BL/ PL',
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
                          image: AssetImage('assets/lecon64/l64.png'),
                          width: 280,
                        ),
                      ),

                      //--- Menu -----------------------
                    ],
                  ),
                ),

                //  phrase de droite
                Container(
                  margin: EdgeInsets.only(bottom: 100, top: 30, right: 17),
                  width: MediaQuery.of(context).size.width / 2,
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          letters(
                            text: "1. Blandine vend du placali à la gare.",
                            font: FontWeight.bold,
                            size: 14,
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          letters(
                            text: "Blandine",
                            font: FontWeight.w600,
                            size: 15,
                            i: 1,
                          ),
                          SizedBox(
                            width: 130,
                          ),
                          letters(
                            text: "du placali",
                            font: FontWeight.w600,
                            size: 15,
                            i: 2,
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          letters(
                            text: "Blan",
                            font: FontWeight.w600,
                            size: 15,
                            i: 3,
                          ),
                          SizedBox(
                            width: 155,
                          ),
                          letters(
                            text: "placali",
                            font: FontWeight.w600,
                            size: 15,
                            i: 4,
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          letters(
                            text: "Bl",
                            font: FontWeight.w600,
                            size: 15,
                            i: 5,
                          ),
                          SizedBox(
                            width: 170,
                          ),
                          letters(
                            text: "pl",
                            font: FontWeight.w600,
                            size: 15,
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
              margin: EdgeInsets.only(bottom: 90, top: 30, left: 50),
              //width: MediaQuery.of(context).size.width / 2,
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 60,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 10,
                        height: MediaQuery.of(context).size.height / 8,
                        child: Card(
                          child: new InkWell(
                            onTap: () {
                              // // Navigator.pushNamed(context, '/lecon1');
                              //print("tapped");
                              player.play(AssetSource('audio/lecon64/bl.mp3'));
                            },
                            child: Center(
                                child: Text('bl',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold))),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 10,
                        height: MediaQuery.of(context).size.height / 8,
                        child: Card(
                          child: new InkWell(
                            onTap: () {
                              // // Navigator.pushNamed(context, '/lecon1');
                              //print("tapped");
                              player.play(AssetSource('audio/lecon64/bl.mp3'));
                            },
                            child: Center(
                                child: Text('BL',
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold))),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 10,
                        height: MediaQuery.of(context).size.height / 8,
                        child: Card(
                          child: new InkWell(
                            onTap: () {
                              // // Navigator.pushNamed(context, '/lecon1');
                              //print("tapped");
                              player.play(AssetSource('audio/lecon64/pl.mp3'));
                            },
                            child: Center(
                                child: Text('pl',
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold))),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 10,
                        height: MediaQuery.of(context).size.height / 8,
                        child: Card(
                          child: new InkWell(
                            onTap: () {
                              // // Navigator.pushNamed(context, '/lecon1');
                              //print("tapped");
                              player.play(AssetSource('audio/lecon64/pl.mp3'));
                            },
                            child: Center(
                                child: Text('PL',
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold))),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 10,
                        height: MediaQuery.of(context).size.height / 8,
                        child: Card(
                          child: new InkWell(
                            onTap: () {
                              // // Navigator.pushNamed(context, '/lecon1');
                              //print("tapped");
                              player.play(AssetSource('audio/lecon64/bl.mp3'));
                            },
                            child: Center(
                                child: Image.asset("assets/lecon64/bl1.png")),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 10,
                        height: MediaQuery.of(context).size.height / 8,
                        child: Card(
                          child: new InkWell(
                            onTap: () {
                              // // Navigator.pushNamed(context, '/lecon1');
                              //print("tapped");
                              player.play(AssetSource('audio/lecon64/bl.mp3'));
                            },
                            child: Center(
                                child: Image.asset("assets/lecon64/bl.png")),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 10,
                        height: MediaQuery.of(context).size.height / 8,
                        child: Card(
                          child: new InkWell(
                            onTap: () {
                              // // Navigator.pushNamed(context, '/lecon1');
                              //print("tapped");
                              player.play(AssetSource('audio/lecon64/pl.mp3'));
                            },
                            child: Center(
                                child: Image.asset(
                              "assets/lecon64/pl.png",
                            )),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 10,
                        height: MediaQuery.of(context).size.height / 8,
                        child: Card(
                          child: new InkWell(
                            onTap: () {
                              // // Navigator.pushNamed(context, '/lecon1');
                              //print("tapped");
                              player.play(AssetSource('audio/lecon64/pl.mp3'));
                            },
                            child: Center(
                                child: Image.asset("assets/lecon64/pl1.png")),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
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
                              player.play(AssetSource('audio/lecon64/bla.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon64/bla.png")),
                            ),
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
                              player.play(AssetSource('audio/lecon64/plo.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon64/plo.png")),
                            ),
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
                              player.play(AssetSource('audio/lecon64/pli.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon64/pli.png")),
                            ),
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
                              player
                                  .play(AssetSource('audio/lecon64/blou.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child:
                                      Image.asset("assets/lecon64/blou.png")),
                            ),
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
                              player
                                  .play(AssetSource('audio/lecon64/plon.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child:
                                      Image.asset("assets/lecon64/plon.png")),
                            ),
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
                              player
                                  .play(AssetSource('audio/lecon64/blai.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child:
                                      Image.asset("assets/lecon64/blai.png")),
                            ),
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
                              player
                                  .play(AssetSource('audio/lecon64/plan.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child:
                                      Image.asset("assets/lecon64/plan.png")),
                            ),
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
                              player.play(AssetSource('audio/lecon64/blu.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon64/blu.png")),
                            ),
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
                              player
                                  .play(AssetSource('audio/lecon64/blin.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child:
                                      Image.asset("assets/lecon64/blin.png")),
                            ),
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
                              player
                                  .play(AssetSource('audio/lecon64/blan.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child:
                                      Image.asset("assets/lecon64/blen1.png")),
                            ),
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
                              player
                                  .play(AssetSource('audio/lecon64/plon.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child:
                                      Image.asset("assets/lecon64/plom.png")),
                            ),
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
                              player
                                  .play(AssetSource('audio/lecon64/bloi.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child:
                                      Image.asset("assets/lecon64/bloi.png")),
                            ),
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
                              player.play(AssetSource('audio/lecon64/ple.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon64/ple.png")),
                            ),
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
                              player
                                  .play(AssetSource('audio/lecon64/blai.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child:
                                      Image.asset("assets/lecon64/blee1.png")),
                            ),
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
                              player.play(AssetSource('audio/lecon64/ple.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child:
                                      Image.asset("assets/lecon64/plee.png")),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // les deux images d'exemples
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Padding(padding: EdgeInsets.only(left: 10)),

                SizedBox(
                  height: 300,
                  child: InkWell(
                    onTap: () {
                      extraHilght(8);
                      player.play(AssetSource('audio/lecon64/unplcard.mp3'));
                    },
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage('assets/lecon64/placard.png'),
                          width: 320,
                          height: 230,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            letters(
                              text: "un ",
                            ),
                            letters(
                              text: "pla",
                              font: FontWeight.bold,
                            ),
                            letters(
                              text: "card",
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
                  padding: EdgeInsets.only(left: 80, bottom: 50),
                  child: InkWell(
                    onTap: () {
                      extraHilght(9);
                      player
                          .play(AssetSource('audio/lecon64/blandinelong.mp3'));
                    },
                    child: Column(children: [
                      letters(
                          text:
                              "Blandine vend du placali de qualité à la gare de Abadjin-",
                          i: 9),
                      letters(
                          text:
                              "Doumé. Elle vend en gros et en détail. Sa place et ses",
                          i: 9),
                      letters(
                          text:
                              "marchandises sont toujours propres. Tout le village se ravitaille",
                          i: 9),
                      letters(
                          text:
                              "dans son magasin. Son commerce lui rapporte beaucoup",
                          i: 9),
                      letters(text: "d’argent.", i: 9),
                    ]),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
