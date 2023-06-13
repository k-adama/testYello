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

class Lecon10 extends StatefulWidget {
  const Lecon10({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<Lecon10> createState() => _Lecon10State();
}

class _Lecon10State extends State<Lecon10> {
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

  String audio0 = 'audio/lecon10/phrase.mp3';
  String audio1 = 'audio/lecon10/tassini.mp3';
  String audio2 = 'audio/lecon10/tassi.mp3';
  String audio3 = 'audio/lecon10/ta.mp3';
  String audio4 = 'audio/lecon10/tisse.mp3';
  String audio5 = 'audio/lecon10/ti.mp3';
  String audio6 = 'audio/lecon10/ti.mp3';
  String audio7 = 'audio/lecon10/li.mp3';
  String audio8 = 'audio/lecon10/la.mp3';
  String audio9 = 'audio/lecon10/lu.mp3';
  String audio10 = 'audio/lecon10/loi.mp3';
  String audio11 = 'audio/lecon10/lom.mp3';
  String audio12 = 'audio/lecon10/le.mp3';
  String audio13 = 'audio/lecon10/lb.mp3';
  String audio14 = 'audio/lecon10/lc.mp3';
  String audio15 = 'audio/lecon10/lai.mp3';
  String audio16 = 'audio/lecon10/lan.mp3';
  String audio17 = 'audio/lecon10/lou.mp3';
  String audio18 = 'audio/lecon10/lui.mp3';
  String audio19 = 'audio/lecon10/ler.mp3';
  String audio20 = 'audio/lecon10/legume.mp3';
  String audio21 = 'audio/lecon10/lame.mp3';
  String audio22 = 'audio/lecon10/text.mp3';

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
    player.play(AssetSource('audio/lecon10/$thesound.mp3'));
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
          widget.title + 'Leçon 10',
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
                't / T',
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
                          image: AssetImage('assets/lecon10/imgL10.png'),
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
                              text: "T",
                              font: FontWeight.w600,
                              size: MediaQuery.of(context).size.width * 0.022,
                              color: Colors.red,
                              i: 0),
                          letters(
                              text: "assini",
                              font: FontWeight.w600,
                              size: MediaQuery.of(context).size.width * 0.022,
                              i: 0),
                          SizedBox(
                            width: 20,
                          ),
                          letters(
                              text: "t",
                              font: FontWeight.w600,
                              size: MediaQuery.of(context).size.width * 0.022,
                              color: Colors.red,
                              i: 0),
                          letters(
                              text: "isse",
                              font: FontWeight.w600,
                              size: MediaQuery.of(context).size.width * 0.022,
                              i: 0),
                          SizedBox(
                            width: 20,
                          ),
                          letters(
                              text: "le pagne baoulé à",
                              font: FontWeight.w600,
                              size: MediaQuery.of(context).size.width * 0.022,
                              i: 0),
                          SizedBox(
                            width: 20,
                          ),
                          letters(
                              text: "T",
                              font: FontWeight.w600,
                              size: MediaQuery.of(context).size.width * 0.022,
                              color: Colors.red,
                              i: 0),
                          letters(
                              text: "iassalé.",
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
                              text: "T",
                              font: FontWeight.w600,
                              size: MediaQuery.of(context).size.width * 0.022,
                              i: 1,
                              color: Colors.red),
                          letters(
                            text: "assani",
                            font: FontWeight.w600,
                            size: MediaQuery.of(context).size.width * 0.022,
                            i: 1,
                          ),
                          SizedBox(
                            width: 200,
                          ),
                          letters(
                              text: "t",
                              font: FontWeight.w600,
                              size: MediaQuery.of(context).size.width * 0.022,
                              i: 4,
                              color: Colors.red),
                          letters(
                            text: "isse",
                            font: FontWeight.w600,
                            size: MediaQuery.of(context).size.width * 0.022,
                            i: 4,
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          letters(
                              text: "T",
                              font: FontWeight.w600,
                              size: MediaQuery.of(context).size.width * 0.022,
                              i: 2,
                              color: Colors.red),
                          letters(
                            text: "assi",
                            font: FontWeight.w600,
                            size: MediaQuery.of(context).size.width * 0.022,
                            i: 2,
                          ),
                          SizedBox(
                            width: 225,
                          ),
                          letters(
                              text: "t",
                              font: FontWeight.w600,
                              size: MediaQuery.of(context).size.width * 0.022,
                              i: 5,
                              color: Colors.red),
                          letters(
                            text: "is",
                            font: FontWeight.w600,
                            size: MediaQuery.of(context).size.width * 0.022,
                            i: 5,
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          letters(
                              text: "T",
                              font: FontWeight.w600,
                              size: MediaQuery.of(context).size.width * 0.022,
                              i: 3,
                              color: Colors.red),
                          letters(
                            text: "a ",
                            font: FontWeight.w600,
                            size: MediaQuery.of(context).size.width * 0.022,
                            i: 3,
                          ),
                          SizedBox(
                            width: 250,
                          ),
                          letters(
                              text: "t",
                              font: FontWeight.w600,
                              size: MediaQuery.of(context).size.width * 0.022,
                              i: 6,
                              color: Colors.red),
                          letters(
                            text: "i",
                            font: FontWeight.w600,
                            size: MediaQuery.of(context).size.width * 0.022,
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
                              player.play(AssetSource('audio/lecon10/t.mp3'));
                            },
                            child: Center(
                                child: Center(
                              child: Center(
                                  child:
                                      Image.asset("assets/lecon10/t/ta.png")),
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
                              player.play(AssetSource('audio/lecon10/t.mp3'));
                            },
                            child: Center(
                                child: Center(
                              child: Center(
                                  child:
                                      Image.asset("assets/lecon10/t/tb.png")),
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
                              player.play(AssetSource('audio/lecon10/t.mp3'));
                            },
                            child: Center(
                                child: Image.asset("assets/lecon10/t/tc.png")),
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
                              player.play(AssetSource('audio/lecon10/t.mp3'));
                            },
                            child: Center(
                                child: Image.asset("assets/lecon10/t/td.png")),
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
                              player.play(AssetSource('audio/lecon10/to.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon10/to.png")),
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
                              player.play(AssetSource('audio/lecon10/ti.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon10/ti.png")),
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
                              player.play(AssetSource('audio/lecon10/ta.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon10/ta.png")),
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
                              player.play(AssetSource('audio/lecon10/tu.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon10/tu.png")),
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
                              player.play(AssetSource('audio/lecon10/toi.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon10/toi.png")),
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
                              player.play(AssetSource('audio/lecon10/tom.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon10/tom.png")),
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
                              player.play(AssetSource('audio/lecon10/te.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon10/te.png")),
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
                              player.play(AssetSource('audio/lecon10/tb.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon10/tbb.png")),
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
                              player.play(AssetSource('audio/lecon10/tc.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon10/tcc.png")),
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
                              player.play(AssetSource('audio/lecon10/tai.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon10/tai.png")),
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
                              player.play(AssetSource('audio/lecon10/tan.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon10/tan.png")),
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
                              player.play(AssetSource('audio/lecon10/tou.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon10/tou.png")),
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
                              player.play(AssetSource('audio/lecon10/tui.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon10/tui.png")),
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
                              player.play(AssetSource('audio/lecon10/ter.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon10/ter.png")),
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
                SizedBox(
                  height: 300,
                  child: InkWell(
                    onTap: () {
                      extraHilght(7);
                      player.play(AssetSource('audio/lecon10/tige.mp3'));
                    },
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage('assets/lecon10/tige.png'),
                          width: 300,
                          height: 200,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            letters(
                              text: "une ",
                              i: 7,
                            ),
                            letters(
                              text: "ti",
                              color: Colors.red,
                              font: FontWeight.w600,
                              i: 7,
                            ),
                            letters(text: "ge", i: 7),
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
                      player.play(AssetSource('audio/lecon10/toiture.mp3'));
                    },
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage('assets/lecon10/toiture.png'),
                          width: 300,
                          height: 200,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            letters(
                              text: "la ",
                              i: 8,
                            ),
                            letters(
                                text: "toi",
                                color: Colors.red,
                                font: FontWeight.w600,
                                i: 8),
                            letters(text: "ture", i: 8),
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
                      player.play(AssetSource('audio/lecon10/phrase1.mp3'));
                    },
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          letters(
                              text:
                                  "Tassini tisse le pagne baoulé à Tiassalé. Elle a appris ce métier",
                              i: 9),
                          letters(
                              text:
                                  "auprès de son père tisserand. Tassini vend les pagnes en gros ",
                              i: 9),
                          letters(
                              text:
                                  "dans les supermarchés d’Abidjan. Cette activité lui rapporte",
                              i: 9),
                          letters(
                              text:
                                  "beaucoup d’argent. Elle soutient son mari dans la gestion",
                              i: 9),
                          letters(text: "financière de la maison.", i: 9),
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
