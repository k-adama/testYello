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

class Lecon44 extends StatefulWidget {
  const Lecon44({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<Lecon44> createState() => _Lecon44State();
}

class _Lecon44State extends State<Lecon44> {
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

  String audio0 = 'audio/lecon44/phrase1.mp3';
  String audio1 = 'audio/lecon44/nadine.mp3';
  String audio2 = 'audio/lecon44/nettoie.mp3';
  String audio3 = 'audio/lecon44/nadi.mp3';
  String audio4 = 'audio/lecon44/net.mp3';
  String audio5 = 'audio/lecon44/na.mp3';
  String audio6 = 'audio/lecon44/ne.mp3';
  String audio7 = 'audio/lecon44/n.mp3';
  String audio8 = 'audio/lecon44/n.mp3';

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
    player.play(AssetSource('audio/lecon44/$thesound.mp3'));
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
        colorArray[11] = Colors.white;
        colorArray[12] = Colors.white;
      } else if (i == 8) {
        colorArray[7] = Colors.white;
        colorArray[8] = Colors.yellowAccent;
        colorArray[9] = Colors.white;
        colorArray[10] = Colors.white;
        colorArray[11] = Colors.white;
        colorArray[12] = Colors.white;
      } else if (i == 9) {
        colorArray[7] = Colors.white;
        colorArray[8] = Colors.white;
        colorArray[9] = Colors.yellowAccent;
        colorArray[10] = Colors.white;
        colorArray[11] = Colors.white;
        colorArray[12] = Colors.white;
      } else if (i == 10) {
        colorArray[7] = Colors.white;
        colorArray[8] = Colors.white;
        colorArray[9] = Colors.white;
        colorArray[10] = Colors.yellowAccent;
        colorArray[11] = Colors.white;
        colorArray[12] = Colors.white;
      } else if (i == 11) {
        colorArray[7] = Colors.white;
        colorArray[8] = Colors.white;
        colorArray[9] = Colors.white;
        colorArray[10] = Colors.white;
        colorArray[11] = Colors.yellowAccent;
        colorArray[12] = Colors.white;
      } else if (i == 12) {
        colorArray[7] = Colors.white;
        colorArray[8] = Colors.white;
        colorArray[9] = Colors.white;
        colorArray[10] = Colors.white;
        colorArray[11] = Colors.white;
        colorArray[12] = Colors.yellowAccent;
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
        for (int i = 0; i < 10; i++) {
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
          widget.title + 'Leçon 44',
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
                'n/ N',
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
                          image: AssetImage('assets/lecon44/imgL44.png'),
                          width: 250,
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
                              text: "N",
                              font: FontWeight.bold,
                              color: Colors.red,
                              i: 0),
                          letters(text: "adi", font: FontWeight.w600, i: 0),
                          letters(
                              text: "n",
                              font: FontWeight.bold,
                              color: Colors.red,
                              i: 0),
                          letters(text: "e", font: FontWeight.w600, i: 0),
                          SizedBox(
                            width: 2,
                          ),
                          letters(
                              text: "n",
                              font: FontWeight.bold,
                              color: Colors.red),
                          letters(
                              text: "ettoie sa cuisi",
                              font: FontWeight.w600,
                              i: 0),
                          letters(
                              text: "n",
                              font: FontWeight.bold,
                              color: Colors.red,
                              i: 0),
                          letters(
                              text: "e régulièrement",
                              font: FontWeight.w600,
                              i: 0),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          letters(
                              text: " pour éviter les maladies.",
                              font: FontWeight.w600,
                              i: 0),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          letters(
                              text: "N",
                              font: FontWeight.w600,
                              i: 1,
                              color: Colors.red),
                          letters(
                            text: "adi",
                            font: FontWeight.w600,
                            i: 1,
                          ),
                          letters(
                              text: "n",
                              font: FontWeight.w600,
                              i: 1,
                              color: Colors.red),
                          letters(
                            text: "e",
                            font: FontWeight.w600,
                            i: 1,
                          ),
                          // SizedBox(
                          //   width: 110,
                          // ),
                          Spacer(),
                          letters(
                              text: "n",
                              font: FontWeight.w600,
                              i: 2,
                              color: Colors.red),
                          letters(
                            text: "ettoie",
                            font: FontWeight.w600,
                            i: 2,
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          letters(
                              text: "N",
                              font: FontWeight.w600,
                              i: 3,
                              color: Colors.red),
                          letters(
                            text: "adi",
                            font: FontWeight.w600,
                            i: 3,
                          ),
                          // SizedBox(
                          //   width: 132,
                          // ),
                          Spacer(),
                          letters(
                              text: "n",
                              font: FontWeight.w600,
                              i: 4,
                              color: Colors.red),
                          letters(
                            text: "et",
                            font: FontWeight.w600,
                            i: 4,
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          letters(
                              text: "N",
                              font: FontWeight.w600,
                              i: 5,
                              color: Colors.red),
                          letters(
                            text: "a",
                            font: FontWeight.w600,
                            i: 5,
                          ),
                          // SizedBox(
                          //   width: 163,
                          // ),
                          Spacer(),
                          letters(
                              text: "n",
                              font: FontWeight.w600,
                              i: 6,
                              color: Colors.red),
                          letters(
                            text: "e",
                            font: FontWeight.w600,
                            i: 6,
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          letters(
                              text: "N",
                              font: FontWeight.w600,
                              i: 7,
                              color: Colors.red),
                          // SizedBox(
                          //   width: 164,
                          // ),
                          Spacer(),
                          letters(
                              text: "n",
                              font: FontWeight.w600,
                              i: 8,
                              color: Colors.red),
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 6,
                        height: MediaQuery.of(context).size.height / 9,
                        child: Card(
                          child: new InkWell(
                            onTap: () {
                              // // Navigator.pushNamed(context, '/lecon1');
                              //print("tapped");
                              player.play(AssetSource('audio/lecon44/n.mp3'));
                            },
                            child: Center(
                                child: Image.asset(
                              "assets/lecon44/n1.png",
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
                              player.play(AssetSource('audio/lecon44/n.mp3'));
                            },
                            child: Center(
                                child: Image.asset("assets/lecon44/n2.png")),
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
                              player.play(AssetSource('audio/lecon44/n.mp3'));
                            },
                            child: Center(
                                child: Image.asset("assets/lecon44/n3.png")),
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
                              player.play(AssetSource('audio/lecon44/n.mp3'));
                            },
                            child: Center(
                                child: Image.asset("assets/lecon44/n4.png")),
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
                        width: MediaQuery.of(context).size.width / 8,
                        height: MediaQuery.of(context).size.height / 9,
                        child: Card(
                          child: new InkWell(
                            onTap: () {
                              // // Navigator.pushNamed(context, '/lecon1');
                              //print("tapped");
                              player.play(AssetSource('audio/lecon44/no.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon44/no.png")),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 8,
                        height: MediaQuery.of(context).size.height / 9,
                        child: Card(
                          child: new InkWell(
                            onTap: () {
                              // // Navigator.pushNamed(context, '/lecon1');
                              //print("tapped");
                              player.play(AssetSource('audio/lecon44/ni.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon44/ni.png")),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 8,
                        height: MediaQuery.of(context).size.height / 9,
                        child: Card(
                          child: new InkWell(
                            onTap: () {
                              // // Navigator.pushNamed(context, '/lecon1');
                              //print("tapped");
                              player.play(AssetSource('audio/lecon44/na.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon44/na.png")),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 8,
                        height: MediaQuery.of(context).size.height / 9,
                        child: Card(
                          child: new InkWell(
                            onTap: () {
                              // // Navigator.pushNamed(context, '/lecon1');
                              //print("tapped");
                              player.play(AssetSource('audio/lecon44/nu.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon44/nu.png")),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 8,
                        height: MediaQuery.of(context).size.height / 9,
                        child: Card(
                          child: new InkWell(
                            onTap: () {
                              // // Navigator.pushNamed(context, '/lecon1');
                              //print("tapped");
                              player.play(AssetSource('audio/lecon44/noi.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon44/noi.png")),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 8,
                        height: MediaQuery.of(context).size.height / 9,
                        child: Card(
                          child: new InkWell(
                            onTap: () {
                              // // Navigator.pushNamed(context, '/lecon1');
                              //print("tapped");
                              player.play(AssetSource('audio/lecon44/nom.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon44/nom.png")),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 8,
                        height: MediaQuery.of(context).size.height / 9,
                        child: Card(
                          child: new InkWell(
                            onTap: () {
                              // // Navigator.pushNamed(context, '/lecon1');
                              //print("tapped");
                              player.play(AssetSource('audio/lecon44/ne.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon44/ne.png")),
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
                        width: MediaQuery.of(context).size.width / 8,
                        height: MediaQuery.of(context).size.height / 9,
                        child: Card(
                          child: new InkWell(
                            onTap: () {
                              // // Navigator.pushNamed(context, '/lecon1');
                              //print("tapped");
                              player.play(AssetSource('audio/lecon44/ne1.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon44/ne1.png")),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 8,
                        height: MediaQuery.of(context).size.height / 9,
                        child: Card(
                          child: new InkWell(
                            onTap: () {
                              // // Navigator.pushNamed(context, '/lecon1');
                              //print("tapped");
                              player.play(AssetSource('audio/lecon44/ne2.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon44/ne2.png")),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 8,
                        height: MediaQuery.of(context).size.height / 9,
                        child: Card(
                          child: new InkWell(
                            onTap: () {
                              // // Navigator.pushNamed(context, '/lecon1');
                              //print("tapped");
                              player.play(AssetSource('audio/lecon44/nai.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon44/nai.png")),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 8,
                        height: MediaQuery.of(context).size.height / 9,
                        child: Card(
                          child: new InkWell(
                            onTap: () {
                              // // Navigator.pushNamed(context, '/lecon1');
                              //print("tapped");
                              player.play(AssetSource('audio/lecon44/nan.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon44/nan.png")),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 8,
                        height: MediaQuery.of(context).size.height / 9,
                        child: Card(
                          child: new InkWell(
                            onTap: () {
                              // // Navigator.pushNamed(context, '/lecon1');
                              //print("tapped");
                              player.play(AssetSource('audio/lecon44/nou.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon44/nou.png")),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 8,
                        height: MediaQuery.of(context).size.height / 9,
                        child: Card(
                          child: new InkWell(
                            onTap: () {
                              // // Navigator.pushNamed(context, '/lecon1');
                              //print("tapped");
                              player.play(AssetSource('audio/lecon44/nui.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon44/nui.png")),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 8,
                        height: MediaQuery.of(context).size.height / 9,
                        child: Card(
                          child: new InkWell(
                            onTap: () {
                              // // Navigator.pushNamed(context, '/lecon1');
                              //print("tapped");
                              player.play(AssetSource('audio/lecon44/nem.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon44/nem.png")),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            // les deux images d'exemples
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(padding: EdgeInsets.only(left: 75)),
                SizedBox(
                  child: InkWell(
                    onTap: () {
                      extraHilght(9);
                      player.play(AssetSource('audio/lecon44/nez.mp3'));
                    },
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage('assets/lecon44/nez.png'),
                          width: 300,
                          height: 200,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            letters(
                              text: "le ",
                              i: 9,
                            ),
                            letters(
                              text: "n",
                              font: FontWeight.bold,
                              color: Colors.red,
                              i: 9,
                            ),
                            letters(
                              text: "ez",
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

            SizedBox(
              height: 10,
            ),
            // le text de la fin
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 50, bottom: 50),
                  child: InkWell(
                    onTap: () {
                      extraHilght(10);
                      player.play(AssetSource('audio/lecon44/phrase2.mp3'));
                    },
                    child: Column(children: [
                      letters(
                          text:
                              '''Nadine nettoie sa cuisine régulièrement pour éviter les maladies. Nadine
nettoie sa cuisine avec des produits désinfectants. Elle respecte les règles
d’hygiène. Son mari et ses enfants sont en très bonne santé.
L’hygiène c’est la santé et le bien-être pour toute la famille.''',
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
