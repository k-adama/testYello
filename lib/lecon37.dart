import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

extension ColorExtension on String {
  toColor6() {
    var hexString = this;
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}

class Lecon37 extends StatefulWidget {
  const Lecon37({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<Lecon37> createState() => _Lecon37State();
}

class _Lecon37State extends State<Lecon37> {
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

  String audio0 = 'audio/lecon37/phrase1.mp3';
  String audio1 = 'audio/lecon37/cultivent.mp3';
  String audio2 = 'audio/lecon37/plantain.mp3';
  String audio3 = 'audio/lecon37/tivent.mp3';
  String audio4 = 'audio/lecon37/plan.mp3';
  String audio5 = 'audio/lecon37/en.mp3';
  String audio6 = 'audio/lecon37/en.mp3';

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
    player.play(AssetSource('audio/lecon28/$thesound.mp3'));
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
  SizedBox Syllabe({String? son, String? img}) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 9,
      height: MediaQuery.of(context).size.height / 9,
      child: Card(
        child: new InkWell(
          onTap: () {
            player.play(AssetSource('audio/lecon37/$son.mp3'));
          },
          child: Center(
            child: Center(child: Image.asset("assets/lecon37/$img.png")),
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
          widget.title + 'Leçon 37 : an / en / am / em',
          style: TextStyle(
              color: Color(0xff000000),
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
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
                          image: AssetImage('assets/lecon37/imgL37.png'),
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
                            text: "Les femmes de Bouaflé cultiv",
                            font: FontWeight.w600,
                            size: 20,
                          ),
                          letters(
                            text: "en",
                            font: FontWeight.w600,
                            size: 20,
                            color: Colors.red,
                          ),
                          letters(
                            text: "t",
                            font: FontWeight.w600,
                            size: 20,
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          letters(
                            text: "de la banane pl",
                            font: FontWeight.w600,
                            size: 20,
                          ),
                          letters(
                            text: "an",
                            font: FontWeight.w600,
                            size: 20,
                            color: Colors.red,
                          ),
                          letters(
                            text: "tain.",
                            font: FontWeight.w600,
                            size: 20,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: <Widget>[
                          letters(
                              text: "cultiv",
                              font: FontWeight.w600,
                              size: 20,
                              i: 1),
                          letters(
                              text: "en",
                              font: FontWeight.w600,
                              size: 20,
                              color: Colors.red,
                              i: 1),
                          letters(
                              text: "t", font: FontWeight.w600, size: 20, i: 1),
                          SizedBox(
                            width: 100,
                          ),
                          letters(
                              text: "pl",
                              font: FontWeight.w600,
                              size: 20,
                              i: 2),
                          letters(
                              text: "an",
                              font: FontWeight.w600,
                              size: 20,
                              color: Colors.red,
                              i: 2),
                          letters(
                              text: "tain",
                              font: FontWeight.w600,
                              size: 20,
                              i: 2),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          letters(
                            text: "tiv",
                            font: FontWeight.w600,
                            size: 20,
                            i: 3,
                          ),
                          letters(
                            text: "en",
                            font: FontWeight.w600,
                            size: 20,
                            color: Colors.red,
                            i: 3,
                          ),
                          letters(
                            text: "t",
                            font: FontWeight.w600,
                            size: 20,
                            i: 3,
                          ),
                          SizedBox(
                            width: 180,
                          ),
                          letters(
                            text: "pl",
                            font: FontWeight.w600,
                            size: 20,
                            i: 4,
                          ),
                          letters(
                              text: "an",
                              font: FontWeight.w600,
                              size: 20,
                              color: Colors.red,
                              i: 4),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          letters(
                              text: "en",
                              font: FontWeight.w600,
                              size: 20,
                              color: Colors.red,
                              i: 5),
                          SizedBox(
                            width: 220,
                          ),
                          letters(
                            text: "an",
                            font: FontWeight.w600,
                            size: 20,
                            color: Colors.red,
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
                      Syllabe(son: 'en', img: 'an'),
                      Syllabe(son: 'en', img: 'en'),
                      Syllabe(son: 'am', img: 'am'),
                      Syllabe(son: 'em', img: 'em'),
                      Syllabe(son: 'en', img: 'An1'),
                      Syllabe(son: 'en', img: 'En1'),
                      Syllabe(son: 'am', img: 'Am1'),
                      Syllabe(son: 'em', img: 'Em1'),
                    ],
                  ),
                  Row(
                    children: [
                      Syllabe(son: 'en', img: 'an2'),
                      Syllabe(son: 'en', img: 'en2'),
                      Syllabe(son: 'am', img: 'am2'),
                      Syllabe(son: 'em', img: 'em2'),
                      Syllabe(son: 'en', img: 'an3'),
                      Syllabe(son: 'en', img: 'en3'),
                      Syllabe(son: 'am', img: 'am3'),
                      Syllabe(son: 'em', img: 'em3'),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Syllabe(son: 'pan', img: 'pan'),
                      Syllabe(son: 'pen', img: 'pen'),
                      Syllabe(son: 'pam', img: 'pam'),
                      Syllabe(son: 'pem', img: 'pem'),
                      Syllabe(son: 'lan', img: 'lan'),
                      Syllabe(son: 'lan', img: 'len'),
                      Syllabe(son: 'lam', img: 'lam'),
                      Syllabe(son: 'lem', img: 'lem'),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Syllabe(son: 'van', img: 'van'),
                      Syllabe(son: 'van', img: 'ven'),
                      Syllabe(son: 'vam', img: 'vam'),
                      Syllabe(son: 'van', img: 'vem'),
                      Syllabe(son: 'ban', img: 'ban'),
                      Syllabe(son: 'ban', img: 'ben'),
                      Syllabe(son: 'bam', img: 'bam'),
                      Syllabe(son: 'ban', img: 'bem'),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Syllabe(son: 'gan', img: 'gan'),
                      Syllabe(son: 'gan', img: 'gen'),
                      Syllabe(son: 'gam', img: 'gam'),
                      Syllabe(son: 'gan', img: 'gem'),
                      Syllabe(son: 'fan', img: 'fan'),
                      Syllabe(son: 'fen', img: 'fen'),
                      Syllabe(son: 'fam', img: 'fam'),
                      Syllabe(son: 'fem', img: 'fem'),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Syllabe(son: 'san', img: 'san'),
                      Syllabe(son: 'san', img: 'sen'),
                      Syllabe(son: 'sam', img: 'sam'),
                      Syllabe(son: 'sem', img: 'sem'),
                      Syllabe(son: 'tan', img: 'tan'),
                      Syllabe(son: 'tan', img: 'ten'),
                      Syllabe(son: 'tam', img: 'tam'),
                      Syllabe(son: 'tem', img: 'tem'),
                    ],
                  ),
                  Row(
                    children: [
                      Syllabe(son: 'han', img: 'han'),
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
                      player.play(AssetSource('audio/lecon37/ambulance.mp3'));
                    },
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage('assets/lecon37/ambulance.png'),
                          width: 400,
                          height: 200,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            letters(
                              text: "Une ",
                              i: 7,
                            ),
                            letters(
                              text: "am",
                              i: 7,
                              color: Colors.red,
                            ),
                            letters(
                              text: "bulance",
                              font: FontWeight.w600,
                              i: 7,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
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
                      player.play(AssetSource('audio/lecon37/phrase2.mp3'));
                    },
                    child: Column(children: [
                      letters(
                        i: 9,
                        text:
                            '''Les femmes de Bouaflé réunies en coopérative cultivent de
la banane plantain de bonne qualité. Après la récolte, 
des remorques viennent charger des tonnes de bananes 
plantains pour les grands marchés d’Abidjan. Les 
coopératives utilisent les revenus de ces ventes pour aider les
membres. C’est une bonne action pour le développement des 
AGR(Activités Génératrices de Revenus) des adhérentes.
''',
                      )
                    ]),
                  ),
                ),
              ],
            ),

            //---------------- Les phrases de fin ------------
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
