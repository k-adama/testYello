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

class Lecon17 extends StatefulWidget {
  const Lecon17({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<Lecon17> createState() => _Lecon17State();
}

class _Lecon17State extends State<Lecon17> {
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

  String audio0 = 'audio/lecon17/elodiePhrase.mp3';
  String audio1 = 'audio/lecon17/elodie.mp3';
  String audio2 = 'audio/lecon17/semaine.mp3';
  String audio3 = 'audio/lecon17/elo.mp3';
  String audio4 = 'audio/lecon17/se.mp3';
  String audio5 = 'audio/lecon17/e.mp3';
  String audio6 = 'audio/lecon17/e.mp3';

  // String audio9 = 'audio/lecon17/e.mp3';
  // String audio10 = 'audio/lecon17/e.mp3';
  // String audio11 = 'audio/lecon17/e.mp3';
  // String audio11 = 'audio/lecon3/O.mp3';
  // String audio12 = 'audio/lecon3/e.mp3';

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
    player.play(AssetSource('audio/lecon17/$thesound.mp3'));
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
      } else {
        colorArray[7] = Colors.white;
        colorArray[8] = Colors.white;
        colorArray[9] = Colors.white;
        colorArray[10] = Colors.yellowAccent;
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
      }
      // else if (state == 7) {
      //   theaudio = audio7;
      // } else if (state == 8) {
      //   theaudio = audio8;
      // }
      //else if (state == 9) {
      //   theaudio = audio9;
      // } else if (state == 10) {
      //   theaudio = audio10;
      // } else if (state == 11) {
      //   theaudio = audio11;
      // }
      else {
        theaudio = audio0;
      }
      //player.setAsset(theaudio);
      player.play(AssetSource(theaudio));
      try {
        if (state > 6) {
          state = 0;
        }
        for (int i = 0; i < 22; i++) {
          if (state == i) {
            colorArray[i] = Colors.yellowAccent;
            //    'thebackcolor$state' =  Colors.white;
          } else {
            colorArray[i] = Colors.white;
          }
          // if (i == 0) {
          //   setState(() {
          //     state == i;
          //     colorArray[i] = Colors.white;
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
  Text MesPhrases({
    Color? color,
    String? text,
    int i = 0,
  }) {
    return Text(
      text!,
      style: TextStyle(
          color: color,
          fontWeight: FontWeight.w600,
          fontFamily: 'Poppins',
          fontSize: 20,
          background: Paint()
            ..strokeWidth = 3.0
            ..color = colorArray[i]
            ..style = PaintingStyle.stroke
            ..strokeJoin = StrokeJoin.round),
    );
  }

//Fin lecture phrase et les mots

  //Début lecture des syllabes
  SizedBox Syllabes({String? son, required child}) {
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
        toolbarHeight: 30,
        backgroundColor: '#fcca0c'.toColor6(),
        title: Text(
          widget.title + 'Leçon 17',
          style:
              TextStyle(color: Color(0xff000000), fontStyle: FontStyle.italic),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10), //apply padding to all four sides
              child: Text(
                'e / E',
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
            SizedBox(
              //  Image illustration
              width: 200,
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                // Expanded(
                SizedBox(
                  //  Image illustration
                  width: 200,
                  height: 300,
                  child: Column(
                    children: <Widget>[
                      Row(
                        //Menu buttons---------
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
                      Row(
                        children: <Widget>[
                          SizedBox(
                            width: 200,
                            height: 200,
                            child: Image(
                              image: AssetImage('assets/lecon17/lec17.PNG'),
                            ),
                          ),
                        ],
                      ),
                      //--- Menu -----------------------
                    ],
                  ),
                ),
                // ),
                // Expanded(
                SizedBox(
                  // les phrases
                  width: 450,
                  height: 280,
                  child: Column(
                    children: <Widget>[
                      // Ligne 1----------------------------------------///
                      Row(
                        // Ligne 1
                        children: <Widget>[
                          //Elève
                          MesPhrases(text: "1."),
                          MesPhrases(text: "E", color: Colors.red),
                          MesPhrases(text: "lodie "),

                          //a été
                          MesPhrases(text: "étudi"),
                          MesPhrases(text: "e ", color: Colors.red),

                          //Frappé
                          MesPhrases(text: "s"),
                          MesPhrases(text: "e", color: Colors.red),
                          MesPhrases(text: "s "),

                          //Frappé
                          MesPhrases(text: "l"),
                          MesPhrases(text: "e", color: Colors.red),
                          MesPhrases(text: "çons "),
                          //Frappé
                          MesPhrases(text: "chaqu"),
                          MesPhrases(text: "e ", color: Colors.red),
                          //Frappé
                          MesPhrases(text: "s"),
                          MesPhrases(text: "e", color: Colors.red),
                          MesPhrases(text: "main"),
                          MesPhrases(text: "e", color: Colors.red),
                        ],
                        //Text('Ulrich cuisine une soupe'),
                      ),
                      // Ligne 2----------------------------------------///
                      Row(
                        // Ligne 2
                        children: <Widget>[
                          SizedBox(
                            height: 80,
                          ),
                          //Elève
                          MesPhrases(text: "E", i: 1, color: Colors.red),
                          MesPhrases(text: "lodie", i: 1),

                          SizedBox(
                            width: 200,
                          ),
                          //cuisine
                          MesPhrases(text: "s", i: 2),
                          MesPhrases(text: "e", i: 2, color: Colors.red),
                          MesPhrases(text: "main", i: 2),
                          MesPhrases(text: "e", i: 2, color: Colors.red),
                        ],
                        //Text('L'élève a été frappé et blessé'),
                      ),

                      // Ligne 3----------------------------------------///
                      Row(
                        // Ligne 3
                        children: <Widget>[
                          //cuisine
                          MesPhrases(text: "E", i: 3, color: Colors.red),
                          MesPhrases(text: "lo", i: 3),
                          SizedBox(
                            width: 230,
                          ),
                          //cuisine
                          MesPhrases(text: "s", i: 4),
                          MesPhrases(text: "e", i: 4, color: Colors.red),
                        ],
                        //Text('L'élève a été frappé et blessé'),
                      ),

                      // Ligne 4----------------------------------------///
                      Row(
                        // Ligne 3
                        children: <Widget>[
                          MesPhrases(text: "E", color: Colors.red, i: 5),
                          SizedBox(
                            width: 242,
                          ),
                          //cuisine
                          MesPhrases(text: "e", i: 6, color: Colors.red),
                        ],
                        //Text('L'élève a été frappé et blessé'),
                      ),
                      // Ligne 4----------------------------------------///
                    ],
                  ),
                ),
                // ),
              ],
            ),
            // les syllabes
            Container(
              margin: EdgeInsets.only(bottom: 80, left: 50),
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
                              player.play(AssetSource('audio/lecon17/e.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon17/e.PNG")),
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
                              player.play(AssetSource('audio/lecon17/e.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child:
                                      Image.asset("assets/lecon17/EGran.PNG")),
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
                              player.play(AssetSource('audio/lecon17/e.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child:
                                      Image.asset("assets/lecon17/epeti.PNG")),
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
                              player.play(AssetSource('audio/lecon17/e.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon17/EE.PNG")),
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
                              player.play(AssetSource('audio/lecon17/pe.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon17/pe.PNG")),
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
                              player.play(AssetSource('audio/lecon17/le.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon17/le.PNG")),
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
                              player.play(AssetSource('audio/lecon17/de.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon17/de.PNG")),
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
                              player.play(AssetSource('audio/lecon17/ge.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon17/ge.PNG")),
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
                              player.play(AssetSource('audio/lecon17/re.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon17/re.PNG")),
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
                              player.play(AssetSource('audio/lecon17/ne.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon17/ne.PNG")),
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
                              player.play(AssetSource('audio/lecon17/te.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon17/te.PNG")),
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
                              player.play(AssetSource('audio/lecon17/he.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon17/he.PNG")),
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
                              player.play(AssetSource('audio/lecon17/me.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon17/me.PNG")),
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
                              player.play(AssetSource('audio/lecon17/we.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon17/we.PNG")),
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
                              player.play(AssetSource('audio/lecon17/se.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon17/se.PNG")),
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
                              player.play(AssetSource('audio/lecon17/me.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon17/me.PNG")),
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
                              player.play(AssetSource('audio/lecon17/gue.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon17/gue.PNG")),
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
                              player.play(AssetSource('audio/lecon17/be.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon17/be.PNG")),
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
                              player.play(AssetSource('audio/lecon17/ce.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon17/ce.PNG")),
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
                              player.play(AssetSource('audio/lecon17/fe.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon17/fe.PNG")),
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
                              player.play(AssetSource('audio/lecon17/je.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon17/je.PNG")),
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
                              player.play(AssetSource('audio/lecon17/ke.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon17/ke.PNG")),
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
                              player.play(AssetSource('audio/lecon17/xe.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon17/xe.PNG")),
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
                      player.play(AssetSource('audio/lecon17/fenetre.mp3'));
                    },
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage('assets/lecon17/fenetre.png'),
                          width: 300,
                          height: 200,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            MesPhrases(
                              text: "une ",
                              i: 7,
                            ),
                            MesPhrases(
                              text: "fe",
                              color: Colors.red,
                              // font: FontWeight.w600,
                              i: 7,
                            ),
                            MesPhrases(text: "nêtres", i: 7),
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
                      player.play(AssetSource('audio/lecon17/nettoyer.mp3'));
                    },
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage('assets/lecon17/main.PNG'),
                          width: 300,
                          height: 200,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            MesPhrases(
                              text: "ne",
                              color: Colors.red,
                              // font: FontWeight.w600,
                              i: 8,
                            ),
                            MesPhrases(text: "ttoyer", i: 8),
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
                      player.play(AssetSource('audio/lecon17/text.mp3'));
                    },
                    child: Column(children: [
                      MesPhrases(
                          text:
                              "Elodie étudie ses leçons chaque semaine. Elle a de très ",
                          i: 9),
                      MesPhrases(
                          text:
                              "bons résultats scolaires. Grâce aux cours d’alphabétisation, ",
                          i: 9),
                      MesPhrases(
                          text:
                              "Elodie sait lire, écrire et calculer. Elodie gère mieux son ",
                          i: 9),
                      MesPhrases(
                          text: "commerce. Elle gagne plus d’argent qu’avant.",
                          i: 9),
                    ]),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
