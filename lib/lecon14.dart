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

class Lecon14 extends StatefulWidget {
  const Lecon14({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<Lecon14> createState() => _Lecon14State();
}

class _Lecon14State extends State<Lecon14> {
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

  String audio0 = 'audio/lecon14/phrase_0.mp3';
  String audio1 = 'audio/lecon14/felicite.mp3';
  String audio2 = 'audio/lecon14/finance.mp3';
  String audio3 = 'audio/lecon14/feli.mp3';
  String audio4 = 'audio/lecon14/fin.mp3';
  String audio5 = 'audio/lecon14/fe.mp3';
  String audio6 = 'audio/lecon14/fi.mp3';
  String audio7 = 'audio/lecon14/f.mp3';
  String audio8 = 'audio/lecon14/f.mp3';
  // String audio9 = 'audio/lecon14/lu.mp3';
  // String audio10 = 'audio/lecon14/loi.mp3';
  // String audio11 = 'audio/lecon14/lom.mp3';
  // String audio12 = 'audio/lecon14/le.mp3';
  // String audio13 = 'audio/lecon14/lé.mp3';
  // String audio14 = 'audio/lecon14/lè.mp3';
  // String audio15 = 'audio/lecon14/lai.mp3';
  // String audio16 = 'audio/lecon14/lan.mp3';
  // String audio17 = 'audio/lecon14/lou.mp3';
  // String audio18 = 'audio/lecon14/lui.mp3';
  // String audio19 = 'audio/lecon14/ler.mp3';
  // String audio20 = 'audio/lecon14/legume.mp3';
  // String audio21 = 'audio/lecon14/lame.mp3';
  // String audio22 = 'audio/lecon14/text.mp3';

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
    player.play(AssetSource('audio/lecon14/$thesound.mp3'));
  }

  void RepeatVoice() {
    player.play(AssetSource(theaudio));
  }

  void extraHilght(int indice) async {
    setState(() {
      for (int i = 9; i < 13; i++) {
        if (indice == i) {
          colorArray[i] = Colors.yellowAccent;
          //    'thebackcolor$state' =  Colors.white;
        } else {
          colorArray[i] = Colors.white;
        }
      }
      // if(i == 7){
      //   colorArray[7] = Colors.yellowAccent;
      //   colorArray[8] = Colors.white;
      //   colorArray[9] = Colors.white;
      // } else if(i == 8) {
      //   colorArray[7] = Colors.white;
      //   colorArray[8] = Colors.yellowAccent;
      //   colorArray[9] = Colors.white;
      // } else {
      //    colorArray[7] = Colors.white;
      //   colorArray[8] = Colors.white;
      //   colorArray[9] = Colors.yellowAccent;
      // }
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
      } else {
        theaudio = audio0;
      }
      //player.setAsset(theaudio);
      player.play(AssetSource(theaudio));
      try {
        if (state > 8) {
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
          widget.title + 'Leçon 14',
          style:
              TextStyle(color: Color(0xff000000), fontStyle: FontStyle.italic),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            //titre de la leçon
            Padding(
              padding: EdgeInsets.all(20), //apply padding to all four sides
              child: Text(
                'f / F',
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
                          image: AssetImage('assets/lecon14/img_1.png'),
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
                              text: "F",
                              font: FontWeight.w600,
                              size: 30,
                              color: Colors.red),
                          letters(
                            text: "élicité",
                            font: FontWeight.w600,
                            size: 20,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          letters(
                            text: "travaille",
                            font: FontWeight.w600,
                            size: 20,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          letters(
                            text: "dans",
                            font: FontWeight.w600,
                            size: 20,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          letters(
                            text: "les finances.",
                            font: FontWeight.w600,
                            size: 20,
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          letters(
                              text: "F",
                              font: FontWeight.w600,
                              size: 25,
                              i: 1,
                              color: Colors.red),
                          letters(
                            text: "élicité",
                            font: FontWeight.w600,
                            size: 20,
                            i: 1,
                          ),
                          SizedBox(
                            width: 250,
                          ),
                          letters(
                            text: "finance",
                            font: FontWeight.w600,
                            size: 20,
                            i: 2,
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          letters(
                              text: "F",
                              font: FontWeight.w600,
                              size: 25,
                              i: 3,
                              color: Colors.red),
                          letters(
                            text: "éli",
                            font: FontWeight.w600,
                            size: 20,
                            i: 3,
                          ),
                          SizedBox(
                            width: 300,
                          ),
                          letters(
                            text: "fin",
                            font: FontWeight.w600,
                            size: 20,
                            i: 4,
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          letters(
                              text: "F",
                              font: FontWeight.w600,
                              size: 25,
                              i: 5,
                              color: Colors.red),
                          letters(
                            text: "é",
                            font: FontWeight.w600,
                            size: 25,
                            i: 5,
                          ),
                          SizedBox(
                            width: 310,
                          ),
                          letters(
                            text: "fi",
                            font: FontWeight.w600,
                            size: 20,
                            i: 6,
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          letters(
                              text: "F",
                              font: FontWeight.w600,
                              size: 25,
                              i: 7,
                              color: Colors.red),
                          SizedBox(
                            width: 330,
                          ),
                          letters(
                            text: "f",
                            font: FontWeight.w600,
                            size: 20,
                            i: 8,
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
                        width: 60,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 6,
                        height: MediaQuery.of(context).size.height / 9,
                        child: Card(
                          child: new InkWell(
                            onTap: () {
                              // // Navigator.pushNamed(context, '/lecon1');
                              //print("tapped");
                              player.play(AssetSource('audio/lecon14/f.mp3'));
                            },
                            child: Center(
                                child: Text('f',
                                    style: TextStyle(
                                        fontSize: 25,
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
                              player.play(AssetSource('audio/lecon14/f.mp3'));
                            },
                            child: Center(
                                child: Text('F',
                                    style: TextStyle(
                                        fontSize: 25,
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
                              player.play(AssetSource('audio/lecon14/f.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon14/f.png")),
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
                              player.play(AssetSource('audio/lecon14/f.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon1/f.png")),
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
                              player.play(AssetSource('audio/lecon14/fo.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon14/fo.png")),
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
                              player.play(AssetSource('audio/lecon14/fi.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon14/fi.png")),
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
                              player.play(AssetSource('audio/lecon14/fa.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon14/fa.png")),
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
                              player.play(AssetSource('audio/lecon14/fu.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon14/fu.png")),
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
                              player.play(AssetSource('audio/lecon14/foi.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon14/foi.png")),
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
                              player.play(AssetSource('audio/lecon14/fom.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon14/fom.png")),
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
                              player.play(AssetSource('audio/lecon14/fe.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon14/fe.png")),
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
                              player.play(AssetSource('audio/lecon14/fe.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon14/fb.png")),
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
                              player.play(AssetSource('audio/lecon14/feh.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon14/fc.png")),
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
                              player.play(AssetSource('audio/lecon14/fai.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon14/fai.png")),
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
                              player.play(AssetSource('audio/lecon14/fan.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon14/fan.png")),
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
                              player.play(AssetSource('audio/lecon14/fou.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon14/fou.png")),
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
                              player.play(AssetSource('audio/lecon14/fui.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon14/fui.png")),
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
                              player.play(AssetSource('audio/lecon14/fer.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon14/fer.png")),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // les TROIS images d'exemples
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 300,
                  width: 200,
                  child: InkWell(
                    onTap: () {
                      extraHilght(9);
                      player.play(AssetSource('audio/lecon14/lafamille.mp3'));
                    },
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage('assets/lecon14/img_2.png'),
                          width: 200,
                          height: 200,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            letters(
                              text: "la ",
                              i: 9,
                            ),
                            letters(
                              text: "fa",
                              color: Colors.red,
                              font: FontWeight.w600,
                              i: 9,
                            ),
                            letters(text: "mille", i: 9),
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
                  width: 200,
                  child: InkWell(
                    onTap: () {
                      extraHilght(10);
                      player.play(AssetSource('audio/lecon14/uneforet.mp3'));
                    },
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage('assets/lecon14/img_3.png'),
                          width: 200,
                          height: 200,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            letters(
                              text: "une ",
                              i: 10,
                            ),
                            letters(
                                text: "fo",
                                color: Colors.red,
                                font: FontWeight.w600,
                                i: 10),
                            letters(text: "rêt", i: 10),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                SizedBox(
                  height: 300,
                  width: 200,
                  child: InkWell(
                    onTap: () {
                      extraHilght(11);
                      player.play(AssetSource('audio/lecon14/unefarine.mp3'));
                    },
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage('assets/lecon14/img_4.png'),
                          width: 200,
                          height: 200,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            letters(
                              text: "une ",
                              i: 11,
                            ),
                            letters(
                                text: "fa",
                                color: Colors.red,
                                font: FontWeight.w600,
                                i: 11),
                            letters(text: "rine", i: 11),
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
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 50),
                  child: InkWell(
                    onTap: () {
                      extraHilght(12);
                      player.play(AssetSource('audio/lecon14/text.mp3'));
                    },
                    child: Column(children: [
                      letters(
                          text:
                              "Félicité travaille dans les finances. L'association des femmes",
                          i: 12),
                      letters(
                          text:
                              "productrices d'attiéké d'Abadjin-Doumé l'a contactée pour ",
                          i: 12),
                      letters(
                          text:
                              "un financement de projet. Félicité a trouvé un financement ",
                          i: 12),
                      letters(
                          text: "pour leur permettre d'agrandir leur commerce.",
                          i: 12),
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
