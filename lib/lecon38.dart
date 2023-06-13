import 'dart:ui';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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

class Lecon38 extends StatefulWidget {
  const Lecon38({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<Lecon38> createState() => _Lecon38State();
}

class _Lecon38State extends State<Lecon38> {
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

  String audio0 = 'audio/lecon38/phrase_0.mp3';
  String audio1 = 'audio/lecon38/melaine.mp3';
  String audio2 = 'audio/lecon38/madelaine.mp3';
  String audio3 = 'audio/lecon38/laine.mp3';
  String audio4 = 'audio/lecon38/leine.mp3';
  String audio5 = 'audio/lecon38/ai.mp3';
  String audio6 = 'audio/lecon38/ei.mp3';

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
    player.play(AssetSource('audio/lecon38/$thesound.mp3'));
  }

  void RepeatVoice() {
    player.play(AssetSource(theaudio));
  }

  void changeHilght(ind) async {
    setState(() {
      if (ind == 0) {
        theaudio = audio0;
      } else if (ind == 1) {
        theaudio = audio1;
      } else if (ind == 2) {
        theaudio = audio2;
      } else if (ind == 3) {
        theaudio = audio3;
      } else if (ind == 4) {
        theaudio = audio4;
      }
      //player.setAsset(theaudio);
      player.play(AssetSource(theaudio));
      try {
        for (int i = 0; i < 6; i++) {
          if (ind == i) {
            colorArray[i] = Colors.yellowAccent;
            //    'thebackcolor$state' =  Colors.white;
          } else {
            colorArray[i] = Colors.white;
          }
        }
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
  SizedBox Syllabe({String? son, String? nbre}) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 6,
      height: MediaQuery.of(context).size.height / 9,
      child: Card(
        child: new InkWell(
          onTap: () {
            player.play(AssetSource('audio/lecon38/$son.mp3'));
          },
          child: Center(
            child: Center(
                child: Text(
              "$nbre",
              style: TextStyle(fontSize: 20),
            )),
          ),
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
          widget.title + 'Leçon 38',
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
                'Les grands nombres',
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold),
              ),
            ),
            //contenu de la leçon
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                //  phrase de droite
                Container(
                  margin: EdgeInsets.only(bottom: 10, top: 30),
                  //width: MediaQuery.of(context).size.width / 2,
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 50, bottom: 0),
                            child: InkWell(
                              onTap: () {
                                changeHilght(1);
                                player.play(
                                    AssetSource('audio/lecon38/text.mp3'));
                              },
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    letters(
                                        text:
                                            "Pour renflouer ses caisses, l'ONG Ga-Tic décide d'achéter",
                                        i: 1),
                                    letters(
                                        text:
                                            " des terrains d'un montant de 3 000 000 F CFA, dans 5 ans",
                                        i: 1),
                                    letters(
                                        text:
                                            "chaque terrain vaudra 10 000 000 F CFA. Le comptable doit",
                                        i: 1),
                                    letters(
                                        text:
                                            "écrire l'investissement, le produit et le bénéfice :",
                                        i: 1),
                                    Image(
                                      image: AssetImage(
                                          'assets/lecon38/img_1.png'),
                                      width: 500,
                                      height: 350,
                                    ),
                                  ]),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              changeHilght(2);
                              ;
                              player.play(AssetSource(
                                  'audio/lecon38/investissement.mp3'));
                            },
                            child: letters(
                              text: "Investissement : 3 000 000 F CFA",
                              font: FontWeight.w700,
                              size: 20,
                              i: 2,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              changeHilght(3);
                              player.play(
                                  AssetSource('audio/lecon38/produit.mp3'));
                            },
                            child: letters(
                              text: "Produit : 10 000 000 F CFA",
                              font: FontWeight.w700,
                              size: 20,
                              i: 3,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              changeHilght(4);
                              player.play(
                                  AssetSource('audio/lecon38/benefice.mp3'));
                            },
                            child: letters(
                              text:
                                  "Bénéfice : 10 000 000 - 3 000 000 = 7 000 000 F CFA",
                              font: FontWeight.w700,
                              size: 20,
                              i: 4,
                            ),
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
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 100, bottom: 50),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image(
                                image: AssetImage('assets/lecon38/img_2.png'),
                                width: 500,
                                height: 350,
                              ),
                            ]),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      changeHilght(5);
                      player.play(AssetSource('audio/lecon38/exercice.mp3'));
                    },
                    child: Column(
                      children: [
                        letters(text: "Exercice pratique :", size: 20, i: 5),
                        SizedBox(
                          height: 10,
                        ),
                        letters(
                            text:
                                "Placez les nombres suivants dans le tableau dans votre cahier d'exercice.",
                            size: 20,
                            i: 5),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Syllabe(son: 'nbr_0', nbre: '120 205 620'),
                      Syllabe(son: 'nbr_1', nbre: '25 154 860'),
                      Syllabe(son: 'nbr_2', nbre: '12'),
                      Syllabe(son: 'nbr_3', nbre: '4 875 849'),
                      Syllabe(son: 'nbr_4', nbre: '282 103 516'),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Syllabe(son: 'nbr_5', nbre: '12 022 000'),
                      Syllabe(son: 'nbr_6', nbre: '9 898 542'),
                      Syllabe(son: 'nbr_7', nbre: '1 247 845'),
                      Syllabe(son: 'nbr_8', nbre: '1 247 845'),
                      Syllabe(son: 'nbr_9', nbre: '19'),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Syllabe(son: 'nbr_10', nbre: '656 525 421'),
                      Syllabe(son: 'nbr_11', nbre: '1 010'),
                      Syllabe(son: 'nbr_12', nbre: '87 874 854'),
                      Syllabe(son: 'nbr_13', nbre: '0'),
                      Syllabe(son: 'nbr_14', nbre: '25 487 012'),
                    ],
                  ),
                ],
              ),
            ),
            // les deux images d'exemples

            //---------------- Les phrases de fin ------------
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
