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

class Lecon31 extends StatefulWidget {
  const Lecon31({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<Lecon31> createState() => _Lecon31State();
}

class _Lecon31State extends State<Lecon31> {
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

  String audio0 = 'audio/lecon31/l31.mp3';
  String audio1 = 'audio/lecon31/fatou.mp3';
  String audio2 = 'audio/lecon31/dufoutou.mp3';
  String audio3 = 'audio/lecon31/tou.mp3';
  String audio4 = 'audio/lecon31/foutou.mp3';
  String audio5 = 'audio/lecon31/ou.mp3';
  String audio6 = 'audio/lecon31/ou.mp3';
  String audio7 = 'audio/lecon31/fatoulong.mp3';
  // String audio8 = 'audio/lecon/o.mp3';
  // String audio9 = 'audio/lecon/opportunetext.mp3';
  // String audio10 = 'audio/lecon3/opportunetext.mp3';
  // String audio11 = 'audio/lecon3/o.mp3';
  // String audio12 = 'audio/lecon3/o.mp3';
  // String audio13 = 'audio/lecon3/po.mp3';
  // String audio14 = 'audio/lecon3/lo.mp3';
  // String audio15 = 'audio/lecon3/do.mp3';
  // String audio16 = 'audio/lecon3/go.mp3';
  // String audio17 = 'audio/lecon3/ro.mp3';
  // String audio18 = 'audio/lecon3/noo.mp3';
  // String audio19 = 'audio/lecon3/too.mp3';
  // String audio20 = 'audio/lecon3/ho.mp3';
  // String audio21 = 'audio/lecon3/mo.mp3';
  // String audio22 = 'audio/lecon3/wo.mp3';
  // String audio23 = 'audio/lecon3/so1.mp3';
  // String audio24 = 'audio/lecon3/mo.mp3';
  // String audio25 = 'audio/lecon3/go.mp3 ';
  // String audio26 = 'audio/lecon3/bo.mp3';
  // String audio27 = 'audio/lecon3/co.mp3';
  // String audio28 = 'audio/lecon3/fo.mp3';
  // String audio29 = 'audio/lecon3/jo.mp3';
  // String audio30 = 'audio/lecon3/co.mp3';
  // String audio32 = 'audio/lecon3/fo.mp3';
  // String audio33 = 'audio/lecon3/jo.mp3';
  // String audio35 = 'audio/lecon3/opportunetext.mp3';

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
    player.play(AssetSource('audio/lecon31/$thesound.mp3'));
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
        colorArray[10] = Colors.white;
      } else if (i == 8) {
        colorArray[7] = Colors.white;
        colorArray[8] = Colors.yellowAccent;
        colorArray[9] = Colors.white;
        colorArray[10] = Colors.white;
      } else if (i == 9) {
        colorArray[7] = Colors.white;
        colorArray[8] = Colors.white;
        colorArray[9] = Colors.yellowAccent;
        colorArray[10] = Colors.white;
      } else if (i == 10) {
        colorArray[7] = Colors.white;
        colorArray[8] = Colors.white;
        colorArray[9] = Colors.white;
        colorArray[10] = Colors.yellowAccent;
      } else {
        colorArray[7] = Colors.white;
        colorArray[8] = Colors.white;
        colorArray[9] = Colors.white;
        colorArray[10] = Colors.white;
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
        for (int i = 0; i < 7; i++) {
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
          widget.title + 'Leçon 31',
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
                'ou/ OU',
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
                          image: AssetImage('assets/lecon31/l31.png'),
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
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          letters(
                            text: "1. F",
                            font: FontWeight.bold,
                            size: 15,
                          ),
                          letters(
                            text: "atou",
                            font: FontWeight.w600,
                            size: 15,
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          letters(
                            text: "pile du ",
                            font: FontWeight.w600,
                            size: 15,
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          letters(
                            text: "pour toute",
                            font: FontWeight.w600,
                            size: 15,
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          letters(
                            text: "la famille.",
                            font: FontWeight.w600,
                            size: 15,
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          letters(
                            text: "Fatou",
                            font: FontWeight.w600,
                            size: 15,
                            i: 1,
                          ),
                          SizedBox(
                            width: 150,
                          ),
                          letters(
                            text: "du foutou",
                            font: FontWeight.w600,
                            size: 15,
                            i: 2,
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          letters(
                            text: "tou",
                            font: FontWeight.w600,
                            size: 15,
                            i: 3,
                          ),
                          SizedBox(
                            width: 155,
                          ),
                          letters(
                            text: "foutou",
                            font: FontWeight.w600,
                            size: 15,
                            i: 4,
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          letters(
                            text: "ou",
                            font: FontWeight.w600,
                            size: 15,
                            i: 5,
                          ),
                          SizedBox(
                            width: 160,
                          ),
                          letters(
                            text: "ou",
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
                              player.play(AssetSource('audio/lecon31/ou.mp3'));
                            },
                            child: Center(
                                child: Text('ou',
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
                              player.play(AssetSource('audio/lecon31/ou.mp3'));
                            },
                            child: Center(
                                child: Text('OU',
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
                              player.play(AssetSource('audio/lecon31/ou.mp3'));
                            },
                            child: Center(
                                child: Image.asset(
                              "assets/lecon31/ou.png",
                            )),
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
                              player.play(AssetSource('audio/lecon31/ou.mp3'));
                            },
                            child: Center(
                                child: Image.asset("assets/lecon31/ou0.png")),
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
                              player.play(AssetSource('audio/lecon31/pou.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon31/pou.png")),
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
                              player.play(AssetSource('audio/lecon31/lou.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon31/lou.png")),
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
                              player.play(AssetSource('audio/lecon31/dou.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon31/dou.png")),
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
                              player.play(AssetSource('audio/lecon31/rou.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon31/rou.png")),
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
                              player.play(AssetSource('audio/lecon31/nou.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child:
                                      Image.asset("assets/lecon31/nous.png")),
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
                              player.play(AssetSource('audio/lecon31/tou.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon31/tou.png")),
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
                              player.play(AssetSource('audio/lecon31/hou.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon31/hou.png")),
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
                              player.play(AssetSource('audio/lecon31/sou.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon31/sou.png")),
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
                              player.play(AssetSource('audio/lecon31/mou.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon31/mou.png")),
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
                              player.play(AssetSource('audio/lecon31/gou.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child:
                                      Image.asset("assets/lecon31/guou.png")),
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
                              player.play(AssetSource('audio/lecon31/bou.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon31/bou.png")),
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
                              player.play(AssetSource('audio/lecon31/fou.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon31/fou.png")),
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
                              player.play(AssetSource('audio/lecon31/jou.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon31/jou.png")),
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
                              player.play(AssetSource('audio/lecon31/gou.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon31/gou.png")),
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
                              player.play(AssetSource('audio/lecon31/hou.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon31/hou.png")),
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
              children: [
                // Padding(padding: EdgeInsets.only(left: 10)),
                SizedBox(
                  height: 300,
                  child: InkWell(
                    onTap: () {
                      extraHilght(7);
                      player.play(AssetSource('audio/lecon31/dufoutou.mp3'));
                    },
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage('assets/lecon31/foutou.png'),
                          width: 250,
                          height: 200,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            letters(
                              text: "du ",
                              i: 7,
                            ),
                            letters(
                              text: "fou",
                              font: FontWeight.bold,
                              i: 7,
                            ),
                            letters(
                              text: "tou",
                              i: 7,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                SizedBox(
                  height: 300,
                  child: InkWell(
                    onTap: () {
                      extraHilght(8);
                      player
                          .play(AssetSource('audio/lecon31/unebouteille.mp3'));
                    },
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage('assets/lecon31/bouteille.png'),
                          width: 250,
                          height: 200,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            letters(
                              text: "une ",
                              i: 8,
                            ),
                            letters(
                              text: "bou",
                              i: 8,
                              font: FontWeight.bold,
                            ),
                            letters(
                              text: "teille",
                              i: 8,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 300,
                  child: InkWell(
                    onTap: () {
                      extraHilght(9);
                      player.play(AssetSource('audio/lecon31/unboubou.mp3'));
                    },
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage('assets/lecon31/boubou.png'),
                          width: 250,
                          height: 200,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            letters(
                              text: "un ",
                              i: 9,
                            ),
                            letters(
                              text: "bou",
                              i: 9,
                              font: FontWeight.bold,
                            ),
                            letters(
                              text: "bou",
                              i: 9,
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
                      extraHilght(10);
                      player.play(AssetSource('audio/lecon31/fatoulong.mp3'));
                    },
                    child: Column(children: [
                      letters(
                          text:
                              "La famille de Fatou aime le foutou. Tous les lundis et",
                          i: 10),
                      letters(
                          text:
                              "vendredis, Fatou prépare du foutou pour toute la famille. Lors",
                          i: 10),
                      letters(
                          text:
                              "orner les plats de ses invités. c'est un geste qu'elle a appris ",
                          i: 10),
                      letters(
                          text:
                              "des fêtes traditionnelles et des évènements heureux, elle sert",
                          i: 10),
                      letters(
                          text:
                              "du foutou à ses invités. Ceux-ci se régalent et la félicitent pour",
                          i: 10),
                      letters(
                          text:
                              "ses mets délicieux. Sa fille l’aide dans les tâches ménagères.",
                          i: 10),
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
