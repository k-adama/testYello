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

class Lecon32 extends StatefulWidget {
  const Lecon32({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<Lecon32> createState() => _Lecon32State();
}

class _Lecon32State extends State<Lecon32> {
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

  String audio0 = 'audio/lecon32/l32.mp3';

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
    player.play(AssetSource('audio/lecon32/$thesound.mp3'));
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
      } else {
        theaudio = audio0;
      }

      //player.setAsset(theaudio);
      player.play(AssetSource(theaudio));
      try {
        if (state > 8) {
          state = 0;
        }
        for (int i = 0; i < 9; i++) {
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
          widget.title + 'Leçon 32',
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
                'Opération avec les nombre a 2 chiffres',
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
                          image: AssetImage('assets/lecon32/l32.png'),
                          width: 300,
                        ),
                      ),

                      //--- Menu -----------------------
                    ],
                  ),
                ),

                //  phrase de droite
                Container(
                  margin: EdgeInsets.only(bottom: 100, top: 30, left: 8),
                  width: MediaQuery.of(context).size.width / 2,
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 5, left: 120),
                  child: Text(
                    "Poser et effectuer.",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
            // les syllabes
            Container(
              margin: EdgeInsets.only(bottom: 80, left: 120),
              //width: MediaQuery.of(context).size.width / 2,
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.all(8),
                        child: Table(
                          defaultColumnWidth: FixedColumnWidth(120),
                          border: TableBorder.all(
                            color: Colors.black,
                            style: BorderStyle.solid,
                            width: 1,
                          ),
                          children: [
                            TableRow(children: [
                              Card(
                                  child: new InkWell(
                                onTap: () {
                                  // // Navigator.pushNamed(context, '/lecon1');
                                  //print("tapped");
                                  player.play(
                                      AssetSource('audio/lecon32/42+33.mp3'));
                                },
                                child: Column(
                                  children: [
                                    Text("42"),
                                    Text("+"),
                                    Text("33"),
                                    SizedBox(
                                      height: 15,
                                    ),
                                  ],
                                ),
                              )),
                              Card(
                                  child: new InkWell(
                                onTap: () {
                                  // // Navigator.pushNamed(context, '/lecon1');
                                  //print("tapped");
                                  player.play(
                                      AssetSource('audio/lecon32/51+11.mp3'));
                                },
                                child: Column(
                                  children: [
                                    Text("51"),
                                    Text("+"),
                                    Text("11"),
                                    SizedBox(
                                      height: 15,
                                    ),
                                  ],
                                ),
                              )),
                              Card(
                                  child: new InkWell(
                                onTap: () {
                                  // // Navigator.pushNamed(context, '/lecon1');
                                  //print("tapped");
                                  player.play(
                                      AssetSource('audio/lecon32/18+52.mp3'));
                                },
                                child: Column(
                                  children: [
                                    Text("18"),
                                    Text("+"),
                                    Text("52"),
                                    SizedBox(
                                      height: 15,
                                    ),
                                  ],
                                ),
                              )),
                              Card(
                                  child: new InkWell(
                                onTap: () {
                                  // // Navigator.pushNamed(context, '/lecon1');
                                  //print("tapped");
                                  player.play(
                                      AssetSource('audio/lecon32/80+10.mp3'));
                                },
                                child: Column(
                                  children: [
                                    Text("80"),
                                    Text("+"),
                                    Text("10"),
                                    SizedBox(
                                      height: 15,
                                    ),
                                  ],
                                ),
                              ))
                            ]),
                            TableRow(children: [
                              Card(
                                  child: new InkWell(
                                onTap: () {
                                  // // Navigator.pushNamed(context, '/lecon1');
                                  //print("tapped");
                                  player.play(
                                      AssetSource('audio/lecon32/9x11.mp3'));
                                },
                                child: Column(
                                  children: [
                                    Text("9"),
                                    Text("*"),
                                    Text("11"),
                                    SizedBox(
                                      height: 15,
                                    ),
                                  ],
                                ),
                              )),
                              Card(
                                  child: new InkWell(
                                onTap: () {
                                  // // Navigator.pushNamed(context, '/lecon1');
                                  //print("tapped");
                                  player.play(
                                      AssetSource('audio/lecon32/8x12.mp3'));
                                },
                                child: Column(
                                  children: [
                                    Text("8"),
                                    Text("*"),
                                    Text("12"),
                                    SizedBox(
                                      height: 15,
                                    ),
                                  ],
                                ),
                              )),
                              Card(
                                  child: new InkWell(
                                onTap: () {
                                  // // Navigator.pushNamed(context, '/lecon1');
                                  //print("tapped");
                                  player.play(
                                      AssetSource('audio/lecon32/15x4.mp3'));
                                },
                                child: Column(
                                  children: [
                                    Text("15"),
                                    Text("*"),
                                    Text("4"),
                                    SizedBox(
                                      height: 15,
                                    ),
                                  ],
                                ),
                              )),
                              Card(
                                  child: new InkWell(
                                onTap: () {
                                  // // Navigator.pushNamed(context, '/lecon1');
                                  //print("tapped");
                                  player.play(
                                      AssetSource('audio/lecon32/20x4.mp3'));
                                },
                                child: Column(
                                  children: [
                                    Text("20"),
                                    Text("*"),
                                    Text("4"),
                                    SizedBox(
                                      height: 15,
                                    ),
                                  ],
                                ),
                              ))
                            ]),
                            TableRow(children: [
                              Card(
                                  child: new InkWell(
                                onTap: () {
                                  // // Navigator.pushNamed(context, '/lecon1');
                                  //print("tapped");
                                  player.play(
                                      AssetSource('audio/lecon32/75-29.mp3'));
                                },
                                child: Column(
                                  children: [
                                    Text("75"),
                                    Text("-"),
                                    Text("29"),
                                    SizedBox(
                                      height: 15,
                                    ),
                                  ],
                                ),
                              )),
                              Card(
                                  child: new InkWell(
                                onTap: () {
                                  // // Navigator.pushNamed(context, '/lecon1');
                                  //print("tapped");
                                  player.play(
                                      AssetSource('audio/lecon32/59-41.mp3'));
                                },
                                child: Column(
                                  children: [
                                    Text("59"),
                                    Text("-"),
                                    Text("41"),
                                    SizedBox(
                                      height: 15,
                                    ),
                                  ],
                                ),
                              )),
                              Card(
                                  child: new InkWell(
                                onTap: () {
                                  // // Navigator.pushNamed(context, '/lecon1');
                                  //print("tapped");
                                  player.play(
                                      AssetSource('audio/lecon32/88-37.mp3'));
                                },
                                child: Column(
                                  children: [
                                    Text("88"),
                                    Text("-"),
                                    Text("37"),
                                    SizedBox(
                                      height: 15,
                                    ),
                                  ],
                                ),
                              )),
                              Card(
                                  child: new InkWell(
                                onTap: () {
                                  // // Navigator.pushNamed(context, '/lecon1');
                                  //print("tapped");
                                  player.play(
                                      AssetSource('audio/lecon32/86-28.mp3'));
                                },
                                child: Column(
                                  children: [
                                    Text("86"),
                                    Text("-"),
                                    Text("28"),
                                    SizedBox(
                                      height: 15,
                                    ),
                                  ],
                                ),
                              ))
                            ]),
                            TableRow(children: [
                              Card(
                                  child: new InkWell(
                                onTap: () {
                                  // // Navigator.pushNamed(context, '/lecon1');
                                  //print("tapped");
                                  player.play(
                                      AssetSource('audio/lecon32/81div3.mp3'));
                                },
                                child: Column(
                                  children: [
                                    Text("81"),
                                    Text("÷"),
                                    Text("3"),
                                    SizedBox(
                                      height: 15,
                                    ),
                                  ],
                                ),
                              )),
                              Card(
                                  child: new InkWell(
                                onTap: () {
                                  // // Navigator.pushNamed(context, '/lecon1');
                                  //print("tapped");
                                  player.play(
                                      AssetSource('audio/lecon32/55div5.mp3'));
                                },
                                child: Column(
                                  children: [
                                    Text("55"),
                                    Text("÷"),
                                    Text("5"),
                                    SizedBox(
                                      height: 15,
                                    ),
                                  ],
                                ),
                              )),
                              Card(
                                  child: new InkWell(
                                onTap: () {
                                  // // Navigator.pushNamed(context, '/lecon1');
                                  //print("tapped");
                                  player.play(
                                      AssetSource('audio/lecon32/72div8.mp3'));
                                },
                                child: Column(
                                  children: [
                                    Text("72"),
                                    Text("÷"),
                                    Text("8"),
                                    SizedBox(
                                      height: 15,
                                    ),
                                  ],
                                ),
                              )),
                              Card(
                                  child: new InkWell(
                                onTap: () {
                                  // // Navigator.pushNamed(context, '/lecon1');
                                  //print("tapped");
                                  player.play(
                                      AssetSource('audio/lecon32/64div12.mp3'));
                                },
                                child: Column(
                                  children: [
                                    Text("64"),
                                    Text("÷"),
                                    Text("12"),
                                    SizedBox(
                                      height: 15,
                                    ),
                                  ],
                                ),
                              ))
                            ]),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
            // les deux images d'exemples
          ],
        ),
      ),
    );
  }
}
