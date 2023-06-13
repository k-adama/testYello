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

class Lecon12 extends StatefulWidget {
  const Lecon12({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<Lecon12> createState() => _Lecon12State();
}

class _Lecon12State extends State<Lecon12> {
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

  String audio0 = 'audio/lecon/moyaphrase.mp3';
  String audio1 = 'audio/lecon/6.mp3';
  String audio2 = 'audio/lecon/6.mp3';
  String audio3 = 'audio/lecon/6.mp3';
  String audio4 = 'audio/lecon/moyafamille.mp3';
  String audio5 = 'audio/lecon/moyarep.mp3';
  String audio6 = 'audio/lecon/amouruinion.mp3';

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
    player.play(AssetSource('audio/lecon/$thesound.mp3'));
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
        for (int i = 0; i < 8; i++) {
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

  //Fonction pour definir les lettres
  Text letter({
    Color? color,
    String? text,
    int i = 0,
    double size = 20,
  }) {
    return Text(
      text!,
      style: TextStyle(
          color: color,
          fontWeight: FontWeight.w600,
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
          widget.title + 'Leçon 12',
          style:
              TextStyle(color: Color(0xff000000), fontStyle: FontStyle.italic),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            //le titre de la leçon
            Padding(
              padding:
                  EdgeInsets.only(top: 30), //apply padding to all four sides
              child: Text(
                'Le chiffre 6',
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
                  height: 250,
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
                              image: AssetImage('assets/lecon/img12.png'),
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
                            text: "Après ",
                            i: 0,
                            size: MediaQuery.of(context).size.width * 0.022,
                          ),
                          letter(
                            text: "6 ",
                            color: Colors.red,
                            i: 0,
                            size: MediaQuery.of(context).size.width * 0.022,
                          ),
                          letter(
                            text: "jours de vente, Moya se repose le dimanche.",
                            i: 0,
                            size: MediaQuery.of(context).size.width * 0.022,
                          ),
                        ],
                      ),
                      Row(
                        // Ligne 3
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(
                                left: 60, right: 60, bottom: 30, top: 30),
                            child: letter(text: "6", color: Colors.red, i: 1),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: 60, right: 60, bottom: 30, top: 30),
                            child: letter(text: "6", color: Colors.red, i: 2),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: 60, right: 60, bottom: 30, top: 30),
                            child: letter(text: "6", color: Colors.red, i: 3),
                          ),
                        ],
                      ),
                      Row(
                        // Ligne 2
                        children: <Widget>[
                          letter(
                            text:
                                "Après 6 jours de vente, Moya s’occupe de sa famille.",
                            i: 4,
                            size: MediaQuery.of(context).size.width * 0.022,
                          ),
                        ],
                        //Text('Un fort vent froid souffle aujourd'hui.'),
                      ),
                      Row(
                        // Ligne 3
                        children: <Widget>[
                          letter(
                            text: "Après 6 jours de vente, Moya se repose.",
                            i: 5,
                            size: MediaQuery.of(context).size.width * 0.022,
                          ),
                        ],
                        //Text('Un fort vent froid souffle aujourd'hui.'),
                      ),

                      // Ligne 2----------------------------------------///
                    ],
                  ),
                ),
              ],
            ),
            //écriture
            Container(
              margin: EdgeInsets.only(top: 5),
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
                          height: 70,
                        ),
                        letter(text: "Pour écrire ", i: 6),
                        //1
                        letter(text: "6", i: 6, color: Colors.red),
                        //on fait
                        letter(text: ", on fait : ", i: 6),
                        //le dialogue
                        letter(text: "l’amour ", i: 6, color: Colors.red),
                        //sur
                        letter(text: "sur ", i: 6),
                        //le dialogue
                        letter(text: "l’union.", i: 6, color: Colors.red),
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
