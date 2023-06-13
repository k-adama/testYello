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

class Lecon3 extends StatefulWidget {
  @override
  State<Lecon3> createState() => _Lecon3State();
}

class _Lecon3State extends State<Lecon3> {
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

  String audio0 = 'audio/lecon3/phrase_0.mp3';
  String audio1 = 'audio/lecon3/phrase_1.mp3';
  String audio2 = 'audio/lecon3/un.mp3';
  String audio3 = 'audio/lecon3/un.mp3';
  String audio4 = 'audio/lecon3/un.mp3';
  String audio5 = 'audio/lecon3/phrase_2.mp3';
  String audio6 = 'audio/lecon3/phrase_3.mp3';

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
    player.play(AssetSource('audio/lecon3/$thesound.mp3'));
  }

  void RepeatVoice() {
    player.play(AssetSource(theaudio));
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

  //Fonction pour definir les lettres
  Text letter({
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
            ..color = colorArray[
                i] //le "i" est l'indice qui fait circuler la couleur jaune
            ..style = PaintingStyle.stroke
            ..strokeJoin = StrokeJoin.round),
    );
  }

  //function pour les syllabes
  SizedBox Syllabes({String? letters}) {
    return SizedBox(
      width: 100,
      height: 80,
      child: Card(
        child: new InkWell(
          onTap: () {
            playSound(letters);
          },
          child: Center(
              child: Text(
            letters!,
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
      //backgroundColor: '#fcca0c'.toColor2(),
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 40,
        backgroundColor: '#fcca0c'.toColor6(),
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(
          'Leçon 3',
          style:
              TextStyle(color: Color(0xff000000), fontStyle: FontStyle.italic),
        ),
      ),
      body: SingleChildScrollView(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
              padding:
                  EdgeInsets.only(top: 30), //apply padding to all four sides
              child: Text(
                'Le chiffre 1',
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
            SizedBox(
              //  Espace entre le titre et la leçon
              width: 200,
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                //  Image illustration
                SizedBox(
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
                              image: AssetImage('assets/lecon3/imgL3.png'),
                            ),
                          ),
                        ],
                      ),
                      //--- Menu -----------------------
                    ],
                  ),
                ),
                //  les texts de la leçon
                SizedBox(
                  // les phrases
                  width: 500,
                  child: Column(
                    children: <Widget>[
                      // Ligne 1----------------------------------------///
                      Row(
                        // Ligne 1
                        children: <Widget>[
                          letter(
                              text:
                                  "Maflani et Kolani sont des membres de l'ONG"),
                        ],
                      ),
                      Row(
                        // Ligne 2
                        children: <Widget>[
                          letter(
                              text:
                                  "Ga-Tic. Elles s'entendent et sont unies pour"),
                        ],
                        //Text('Un fort vent froid souffle aujourd'hui.'),
                      ),
                      Row(
                        // Ligne 3
                        children: <Widget>[
                          letter(text: "faire avancer l'organisation."),
                        ],
                        //Text('Un fort vent froid souffle aujourd'hui.'),
                      ),
                      // Ligne 2----------------------------------------///
                      Row(
                        // Ligne 2
                        children: <Widget>[
                          SizedBox(
                            height: 80,
                          ),
                          letter(
                              text: "1. Dans l'ONG Ga-Tic, nous formons ",
                              i: 1),
                          //1
                          letter(text: "1 ", i: 1, color: Colors.red),
                          //famille
                          letter(text: "famille ", i: 1),
                        ],
                        //Text('Un fort vent froid souffle aujourd'hui.'),
                      ),
                      // Ligne 3----------------------------------------///
                      Row(
                        // Ligne 3
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(
                                left: 60, right: 60, bottom: 30),
                            child: letter(text: "1", color: Colors.red, i: 2),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: 60, right: 60, bottom: 30),
                            child: letter(text: "1", color: Colors.red, i: 3),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: 60, right: 60, bottom: 30),
                            child: letter(text: "1", color: Colors.red, i: 4),
                          ),
                        ],
                      ),
                      Row(
                        // Ligne 4
                        children: <Widget>[
                          letter(
                              text:
                                  "Les membres de l'ONG Ga-Tic sont solidaires",
                              i: 5),
                        ],
                        //Text('Un fort vent froid souffle aujourd'hui.'),
                      ),
                      Row(
                        // Ligne 4
                        children: <Widget>[
                          letter(text: "et Unis. Tous pour", i: 5),

                          //1
                          letter(text: " 1", i: 5, color: Colors.red),
                          //1
                          letter(text: " et", i: 5),
                          //1
                          letter(text: " 1", i: 5, color: Colors.red),
                          //pour tous
                          letter(text: " pour tous", i: 5),
                        ],
                        //Text('Un fort vent froid souffle aujourd'hui.'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            //écriture
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Text(
                'Ecriture',
                style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    // Les sons ----------------------
                    Row(
                      // ------Ligne 1 sons --------
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        SizedBox(
                          height: 80,
                        ),
                        letter(text: "Pour écrire ", i: 6),
                        //1
                        letter(text: "1", i: 6, color: Colors.red),
                        //on fait
                        letter(text: ", on fait : ", i: 6),
                        //la sincérité
                        letter(text: "la sincérité ", i: 6, color: Colors.red),
                        //et
                        letter(text: "et ", i: 6),
                        //amour paternel
                        letter(
                            text: "l'amour paternel.", i: 6, color: Colors.red),
                      ],
                    ),
                  ],
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
