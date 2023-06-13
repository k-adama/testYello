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

class Lecon1 extends StatefulWidget {
  const Lecon1({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<Lecon1> createState() => _Lecon1State();
}

class _Lecon1State extends State<Lecon1> {
  int state = 1;
  String theaudio = '';
  late PageController _controller = PageController(
    initialPage: 0,
  );

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

//  liste des audio a ecouter dans la leçon
  String audio0 = 'audio/lecon1/opportunephrase.mp3';
  String audio1 = 'audio/lecon1/opportune.mp3';
  String audio2 = 'audio/lecon1/tomates.mp3';
  String audio3 = 'audio/lecon1/oppor.mp3';
  String audio4 = 'audio/lecon1/toma.mp3';
  String audio5 = 'audio/lecon1/op.mp3';
  String audio6 = 'audio/lecon1/to.mp3';
  String audio7 = 'audio/lecon1/o.mp3';
  String audio8 = 'audio/lecon1/o.mp3';
  // String audio9 = 'audio/lecon2/p.mp3';
  // String audio11 = 'audio/lecon3/O.mp3';
  // String audio12 = 'audio/lecon3/e.mp3';

  //Listview
  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];
  //GridView images
  final List<String> myImages = [
    'arbre',
    'ballon',
    'chien',
    'dinosaure',
    'fleur',
    'girafe',
    'hippopotame',
    'igloo',
    'jumelle',
    'lampe',
    'montre',
    'nuage',
    'ordinateur',
    'papillon',
    'raisin',
    'sac',
    'tomate',
    'usine',
    'vache',
    'xylophone',
    'yacht',
    'zebre',
  ];

  @override
  void dispose() {
    player.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _controller = PageController(
      initialPage: 0,
    );
    super.initState();
    //SetColorArray();
    state = 0;
    //changeHilght();
    // player = AudioPlayer();
  }

  void playSound(String thesound) {
    player.play(AssetSource('audio/lecon1/$thesound.mp3'));
  }

  void RepeatVoice() {
    player.play(AssetSource(theaudio));
  }

//  pour les audio a ecouter
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
        // } else if (state == 9) {
        //   theaudio = audio9;
      } else {
        theaudio = audio0;
      }
      //player.setAsset(theaudio);
      player.play(AssetSource(theaudio));
      try {
        if (state > 8) {
          state = 0;
        }
        for (int i = 0; i < 22; i++) {
          if (i == 0) {
            setState(() {
              state == i;
              colorArray[i] = Colors.white;
            });
            //    'thebackcolor$state' =  Colors.white;
          } else if (state == i) {
            colorArray[i] = Colors.yellowAccent;
          } else {
            colorArray[i] = Colors.white;
          }
        }
        //SetColorArray();
        state = state + 1;
      } on Exception catch (_) {}
      //theaudio = 'audio$state';
    });
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
          fontWeight: FontWeight.w400,
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
  SizedBox Syllabes({String? son}) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 6,
      height: 80,
      child: Card(
        color: Color.fromRGBO(252, 202, 12, 1),
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
          widget.title + 'Leçon 1',
          style:
              TextStyle(color: Color(0xff000000), fontStyle: FontStyle.italic),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: PageView(
          controller: _controller,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 6,
                      height: MediaQuery.of(context).size.height / 9,
                      child: Card(
                        child: new InkWell(
                          onTap: () {
                            // Navigator.pushNamed(context, '/prealpha');
                            //print("tapped");
                            player.play(AssetSource('audio/lecon1/a.mp3'));
                          },
                          child: Center(
                              child: Text('A', style: TextStyle(fontSize: 25))),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 6,
                      height: MediaQuery.of(context).size.height / 9,
                      child: Card(
                        child: new InkWell(
                          onTap: () {
                            // Navigator.pushNamed(context, '/lecon1');
                            //print("tapped");
                            player.play(AssetSource('audio/lecon1/b.mp3'));
                          },
                          child: Center(
                              child: Text('B', style: TextStyle(fontSize: 25))),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 6,
                      height: MediaQuery.of(context).size.height / 9,
                      child: Card(
                        child: new InkWell(
                          onTap: () {
                            // Navigator.pushNamed(context, '/lecon2');
                            //print("tapped");
                            player.play(AssetSource('audio/lecon1/c.mp3'));
                          },
                          child: Center(
                              child: Text('C', style: TextStyle(fontSize: 25))),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 6,
                      height: MediaQuery.of(context).size.height / 9,
                      child: Card(
                        child: new InkWell(
                          onTap: () {
                            // Navigator.pushNamed(context, '/lecon3');
                            //print("tapped");
                            player.play(AssetSource('audio/lecon1/d.mp3'));
                          },
                          child: Center(
                              child: Text('D', style: TextStyle(fontSize: 25))),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 6,
                      height: MediaQuery.of(context).size.height / 9,
                      child: Card(
                        child: new InkWell(
                          onTap: () {
                            // Navigator.pushNamed(context, '/lecon4');
                            //print("tapped");
                            player.play(AssetSource('audio/lecon1/e.mp3'));
                          },
                          child: Center(
                              child: Text('E', style: TextStyle(fontSize: 25))),
                        ),
                      ),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 6,
                      height: MediaQuery.of(context).size.height / 9,
                      child: Card(
                        child: new InkWell(
                          onTap: () {
                            // // // Navigator.pushNamed(context, '/lecon1');
                            //print("tapped");
                            player.play(AssetSource('audio/lecon1/f.mp3'));
                          },
                          child: Center(
                              child: Text('F', style: TextStyle(fontSize: 25))),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 6,
                      height: MediaQuery.of(context).size.height / 9,
                      child: Card(
                        child: new InkWell(
                          onTap: () {
                            // // // Navigator.pushNamed(context, '/lecon1');
                            //print("tapped");
                            player.play(AssetSource('audio/lecon1/g.mp3'));
                          },
                          child: Center(
                              child: Text('G', style: TextStyle(fontSize: 25))),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 6,
                      height: MediaQuery.of(context).size.height / 9,
                      child: Card(
                        child: new InkWell(
                          onTap: () {
                            // // // Navigator.pushNamed(context, '/lecon1');
                            //print("tapped");
                            player.play(AssetSource('audio/lecon1/h.mp3'));
                          },
                          child: Center(
                              child: Text('H', style: TextStyle(fontSize: 25))),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 6,
                      height: MediaQuery.of(context).size.height / 9,
                      child: Card(
                        child: new InkWell(
                          onTap: () {
                            // // // Navigator.pushNamed(context, '/lecon1');
                            //print("tapped");
                            player.play(AssetSource('audio/lecon1/i.mp3'));
                          },
                          child: Center(
                              child: Text('I', style: TextStyle(fontSize: 25))),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 6,
                      height: MediaQuery.of(context).size.height / 9,
                      child: Card(
                        child: new InkWell(
                          onTap: () {
                            // // // Navigator.pushNamed(context, '/lecon1');
                            // //print("tapped");
                            player.play(AssetSource('audio/lecon1/j.mp3'));
                          },
                          child: Center(
                              child: Text('J', style: TextStyle(fontSize: 25))),
                        ),
                      ),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 6,
                      height: MediaQuery.of(context).size.height / 9,
                      child: Card(
                        child: new InkWell(
                          onTap: () {
                            // // // Navigator.pushNamed(context, '/lecon1');
                            //print("tapped");
                            player.play(AssetSource('audio/lecon1/k.mp3'));
                          },
                          child: Center(
                              child: Text('K', style: TextStyle(fontSize: 25))),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 6,
                      height: MediaQuery.of(context).size.height / 9,
                      child: Card(
                        child: new InkWell(
                          onTap: () {
                            // // // Navigator.pushNamed(context, '/lecon1');
                            //print("tapped");
                            player.play(AssetSource('audio/lecon1/l.mp3'));
                          },
                          child: Center(
                              child: Text('L', style: TextStyle(fontSize: 25))),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 6,
                      height: MediaQuery.of(context).size.height / 9,
                      child: Card(
                        child: new InkWell(
                          onTap: () {
                            // // // Navigator.pushNamed(context, '/lecon1');
                            //print("tapped");
                            player.play(AssetSource('audio/lecon1/m.mp3'));
                          },
                          child: Center(
                              child: Text('M', style: TextStyle(fontSize: 25))),
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
                            player.play(AssetSource('audio/lecon1/n.mp3'));
                          },
                          child: Center(
                              child: Text('N', style: TextStyle(fontSize: 25))),
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
                            player.play(AssetSource('audio/lecon1/o.mp3'));
                          },
                          child: Center(
                              child: Text('O', style: TextStyle(fontSize: 25))),
                        ),
                      ),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 6,
                      height: MediaQuery.of(context).size.height / 9,
                      child: Card(
                        child: new InkWell(
                          onTap: () {
                            // // Navigator.pushNamed(context, '/lecon1');
                            //print("tapped");
                            player.play(AssetSource('audio/lecon1/p.mp3'));
                          },
                          child: Center(
                              child: Text('P', style: TextStyle(fontSize: 25))),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 6,
                      height: MediaQuery.of(context).size.height / 9,
                      child: Card(
                        child: new InkWell(
                          onTap: () {
                            // Navigator.pushNamed(context, '/prealpha');
                            //print("tapped");
                            player.play(AssetSource('audio/lecon1/q.mp3'));
                          },
                          child: Center(
                              child: Text('Q', style: TextStyle(fontSize: 25))),
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
                            player.play(AssetSource('audio/lecon1/r.mp3'));
                          },
                          child: Center(
                              child: Text('R', style: TextStyle(fontSize: 25))),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 6,
                      height: MediaQuery.of(context).size.height / 9,
                      child: Card(
                        child: new InkWell(
                          onTap: () {
                            // Navigator.pushNamed(context, '/lecon2');
                            //print("tapped");
                            player.play(AssetSource('audio/lecon1/s.mp3'));
                          },
                          child: Center(
                              child: Text('S', style: TextStyle(fontSize: 25))),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 6,
                      height: MediaQuery.of(context).size.height / 9,
                      child: Card(
                        child: new InkWell(
                          onTap: () {
                            // Navigator.pushNamed(context, '/lecon3');
                            //print("tapped");
                            player.play(AssetSource('audio/lecon1/t.mp3'));
                          },
                          child: Center(
                              child: Text('T', style: TextStyle(fontSize: 25))),
                        ),
                      ),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 6,
                      height: MediaQuery.of(context).size.height / 9,
                      child: Card(
                        child: new InkWell(
                          onTap: () {
                            // Navigator.pushNamed(context, '/prealpha');
                            //print("tapped");
                            player.play(AssetSource('audio/lecon1/u.mp3'));
                          },
                          child: Center(
                              child: Text('U', style: TextStyle(fontSize: 25))),
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
                            player.play(AssetSource('audio/lecon1/v.mp3'));
                          },
                          child: Center(
                              child: Text('V', style: TextStyle(fontSize: 25))),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 6,
                      height: MediaQuery.of(context).size.height / 9,
                      child: Card(
                        child: new InkWell(
                          onTap: () {
                            // Navigator.pushNamed(context, '/lecon2');
                            //print("tapped");
                            player.play(AssetSource('audio/lecon1/w.mp3'));
                          },
                          child: Center(
                              child: Text('W', style: TextStyle(fontSize: 25))),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 6,
                      height: MediaQuery.of(context).size.height / 9,
                      child: Card(
                        child: new InkWell(
                          onTap: () {
                            // Navigator.pushNamed(context, '/lecon3');
                            //print("tapped");
                            player.play(AssetSource('audio/lecon1/x.mp3'));
                          },
                          child: Center(
                              child: Text('X', style: TextStyle(fontSize: 25))),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 6,
                      height: MediaQuery.of(context).size.height / 9,
                      child: Card(
                        child: new InkWell(
                          onTap: () {
                            // Navigator.pushNamed(context, '/lecon3');
                            //print("tapped");
                            player.play(AssetSource('audio/lecon1/y.mp3'));
                          },
                          child: Center(
                              child: Text('Y', style: TextStyle(fontSize: 25))),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 6,
                      height: MediaQuery.of(context).size.height / 9,
                      child: Card(
                        child: new InkWell(
                          onTap: () {
                            // Navigator.pushNamed(context, '/lecon3');
                            //print("tapped");
                            player.play(AssetSource('audio/lecon1/z.mp3'));
                          },
                          child: Center(
                              child: Text('Z', style: TextStyle(fontSize: 25))),
                        ),
                      ),
                    ),
                  ],
                ),
                // ),
              ],
            ),
            //liste 2
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 6,
                      height: MediaQuery.of(context).size.height / 9,
                      child: Card(
                        child: new InkWell(
                          onTap: () {
                            player.play(AssetSource('audio/lecon1/a.mp3'));
                          },
                          child: Center(
                              child: Text('a', style: TextStyle(fontSize: 25))),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 6,
                      height: MediaQuery.of(context).size.height / 9,
                      child: Card(
                        child: new InkWell(
                          onTap: () {
                            // Navigator.pushNamed(context, '/lecon1');
                            //print("tapped");
                            player.play(AssetSource('audio/lecon1/b.mp3'));
                          },
                          child: Center(
                              child: Text('b', style: TextStyle(fontSize: 25))),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 6,
                      height: MediaQuery.of(context).size.height / 9,
                      child: Card(
                        child: new InkWell(
                          onTap: () {
                            // Navigator.pushNamed(context, '/lecon2');
                            //print("tapped");
                            player.play(AssetSource('audio/lecon1/c.mp3'));
                          },
                          child: Center(
                              child: Text('c', style: TextStyle(fontSize: 25))),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 6,
                      height: MediaQuery.of(context).size.height / 9,
                      child: Card(
                        child: new InkWell(
                          onTap: () {
                            // Navigator.pushNamed(context, '/lecon3');
                            //print("tapped");
                            player.play(AssetSource('audio/lecon1/d.mp3'));
                          },
                          child: Center(
                              child: Text('d', style: TextStyle(fontSize: 25))),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 6,
                      height: MediaQuery.of(context).size.height / 9,
                      child: Card(
                        child: new InkWell(
                          onTap: () {
                            // Navigator.pushNamed(context, '/lecon4');
                            //print("tapped");
                            player.play(AssetSource('audio/lecon1/e.mp3'));
                          },
                          child: Center(
                              child: Text('e', style: TextStyle(fontSize: 25))),
                        ),
                      ),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 6,
                      height: MediaQuery.of(context).size.height / 9,
                      child: Card(
                        child: new InkWell(
                          onTap: () {
                            // // // Navigator.pushNamed(context, '/lecon1');
                            //print("tapped");
                            player.play(AssetSource('audio/lecon1/f.mp3'));
                          },
                          child: Center(
                              child: Text('f', style: TextStyle(fontSize: 25))),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 6,
                      height: MediaQuery.of(context).size.height / 9,
                      child: Card(
                        child: new InkWell(
                          onTap: () {
                            // // // Navigator.pushNamed(context, '/lecon1');
                            //print("tapped");
                            player.play(AssetSource('audio/lecon1/g.mp3'));
                          },
                          child: Center(
                              child: Text('g', style: TextStyle(fontSize: 25))),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 6,
                      height: MediaQuery.of(context).size.height / 9,
                      child: Card(
                        child: new InkWell(
                          onTap: () {
                            // // // Navigator.pushNamed(context, '/lecon1');
                            //print("tapped");
                            player.play(AssetSource('audio/lecon1/h.mp3'));
                          },
                          child: Center(
                              child: Text('h', style: TextStyle(fontSize: 25))),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 6,
                      height: MediaQuery.of(context).size.height / 9,
                      child: Card(
                        child: new InkWell(
                          onTap: () {
                            // // // Navigator.pushNamed(context, '/lecon1');
                            //print("tapped");
                            player.play(AssetSource('audio/lecon1/i.mp3'));
                          },
                          child: Center(
                              child: Text('i', style: TextStyle(fontSize: 25))),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 6,
                      height: MediaQuery.of(context).size.height / 9,
                      child: Card(
                        child: new InkWell(
                          onTap: () {
                            // // // Navigator.pushNamed(context, '/lecon1');
                            // //print("tapped");
                            player.play(AssetSource('audio/lecon1/j.mp3'));
                          },
                          child: Center(
                              child: Text('j', style: TextStyle(fontSize: 25))),
                        ),
                      ),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 6,
                      height: MediaQuery.of(context).size.height / 9,
                      child: Card(
                        child: new InkWell(
                          onTap: () {
                            // // // Navigator.pushNamed(context, '/lecon1');
                            //print("tapped");
                            player.play(AssetSource('audio/lecon1/k.mp3'));
                          },
                          child: Center(
                              child: Text('k', style: TextStyle(fontSize: 25))),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 6,
                      height: MediaQuery.of(context).size.height / 9,
                      child: Card(
                        child: new InkWell(
                          onTap: () {
                            // // // Navigator.pushNamed(context, '/lecon1');
                            //print("tapped");
                            player.play(AssetSource('audio/lecon1/l.mp3'));
                          },
                          child: Center(
                              child: Text('l', style: TextStyle(fontSize: 25))),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 6,
                      height: MediaQuery.of(context).size.height / 9,
                      child: Card(
                        child: new InkWell(
                          onTap: () {
                            // // // Navigator.pushNamed(context, '/lecon1');
                            //print("tapped");
                            player.play(AssetSource('audio/lecon1/m.mp3'));
                          },
                          child: Center(
                              child: Text('m', style: TextStyle(fontSize: 25))),
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
                            player.play(AssetSource('audio/lecon1/n.mp3'));
                          },
                          child: Center(
                              child: Text('n', style: TextStyle(fontSize: 25))),
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
                            player.play(AssetSource('audio/lecon1/o.mp3'));
                          },
                          child: Center(
                              child: Text('o', style: TextStyle(fontSize: 25))),
                        ),
                      ),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 6,
                      height: MediaQuery.of(context).size.height / 9,
                      child: Card(
                        child: new InkWell(
                          onTap: () {
                            // // Navigator.pushNamed(context, '/lecon1');
                            //print("tapped");
                            player.play(AssetSource('audio/lecon1/p.mp3'));
                          },
                          child: Center(
                              child: Text('p', style: TextStyle(fontSize: 25))),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 6,
                      height: MediaQuery.of(context).size.height / 9,
                      child: Card(
                        child: new InkWell(
                          onTap: () {
                            // Navigator.pushNamed(context, '/prealpha');
                            //print("tapped");
                            player.play(AssetSource('audio/lecon1/q.mp3'));
                          },
                          child: Center(
                              child: Text('q', style: TextStyle(fontSize: 25))),
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
                            player.play(AssetSource('audio/lecon1/r.mp3'));
                          },
                          child: Center(
                              child: Text('r', style: TextStyle(fontSize: 25))),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 6,
                      height: MediaQuery.of(context).size.height / 9,
                      child: Card(
                        child: new InkWell(
                          onTap: () {
                            // Navigator.pushNamed(context, '/lecon2');
                            //print("tapped");
                            player.play(AssetSource('audio/lecon1/s.mp3'));
                          },
                          child: Center(
                              child: Text('s', style: TextStyle(fontSize: 25))),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 6,
                      height: MediaQuery.of(context).size.height / 9,
                      child: Card(
                        child: new InkWell(
                          onTap: () {
                            // Navigator.pushNamed(context, '/lecon3');
                            //print("tapped");
                            player.play(AssetSource('audio/lecon1/t.mp3'));
                          },
                          child: Center(
                              child: Text('t', style: TextStyle(fontSize: 25))),
                        ),
                      ),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 6,
                      height: MediaQuery.of(context).size.height / 9,
                      child: Card(
                        child: new InkWell(
                          onTap: () {
                            // Navigator.pushNamed(context, '/prealpha');
                            //print("tapped");
                            player.play(AssetSource('audio/lecon1/u.mp3'));
                          },
                          child: Center(
                              child: Text('u', style: TextStyle(fontSize: 25))),
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
                            player.play(AssetSource('audio/lecon1/v.mp3'));
                          },
                          child: Center(
                              child: Text('v', style: TextStyle(fontSize: 25))),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 6,
                      height: MediaQuery.of(context).size.height / 9,
                      child: Card(
                        child: new InkWell(
                          onTap: () {
                            // Navigator.pushNamed(context, '/lecon2');
                            //print("tapped");
                            player.play(AssetSource('audio/lecon1/w.mp3'));
                          },
                          child: Center(
                              child: Text('w', style: TextStyle(fontSize: 25))),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 6,
                      height: MediaQuery.of(context).size.height / 9,
                      child: Card(
                        child: new InkWell(
                          onTap: () {
                            // Navigator.pushNamed(context, '/lecon3');
                            //print("tapped");
                            player.play(AssetSource('audio/lecon1/x.mp3'));
                          },
                          child: Center(
                              child: Text('x', style: TextStyle(fontSize: 25))),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 6,
                      height: MediaQuery.of(context).size.height / 9,
                      child: Card(
                        child: new InkWell(
                          onTap: () {
                            // Navigator.pushNamed(context, '/lecon3');
                            //print("tapped");
                            player.play(AssetSource('audio/lecon1/y.mp3'));
                          },
                          child: Center(
                              child: Text('y', style: TextStyle(fontSize: 25))),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 6,
                      height: MediaQuery.of(context).size.height / 9,
                      child: Card(
                        child: new InkWell(
                          onTap: () {
                            // Navigator.pushNamed(context, '/lecon3');
                            //print("tapped");
                            player.play(AssetSource('audio/lecon1/z.mp3'));
                          },
                          child: Center(
                              child: Text('z', style: TextStyle(fontSize: 25))),
                        ),
                      ),
                    ),
                  ],
                ),
                // ),
              ],
            ),

            //liste 3
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 6,
                      height: MediaQuery.of(context).size.height / 9,
                      child: Card(
                        child: new InkWell(
                          onTap: () {
                            // Navigator.pushNamed(context, '/prealpha');
                            //print("tapped");
                            player.play(AssetSource('audio/lecon1/a.mp3'));
                          },
                          child:
                              Center(child: Image.asset("assets/lecon1/a.png")),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 6,
                      height: MediaQuery.of(context).size.height / 9,
                      child: Card(
                        child: new InkWell(
                          onTap: () {
                            // Navigator.pushNamed(conImage.asset,"assets/lecon1/.png"lecon1');
                            //print("tapped");
                            player.play(AssetSource('audio/lecon1/b.mp3'));
                          },
                          child:
                              Center(child: Image.asset("assets/lecon1/b.png")),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 6,
                      height: MediaQuery.of(context).size.height / 9,
                      child: Card(
                        child: new InkWell(
                          onTap: () {
                            // Navigator.pushNamed(conImage.asset,"assets/lecon1/.png"lecon2');
                            //print("tapped");
                            player.play(AssetSource('audio/lecon1/c.mp3'));
                          },
                          child:
                              Center(child: Image.asset("assets/lecon1/c.png")),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 6,
                      height: MediaQuery.of(context).size.height / 9,
                      child: Card(
                        child: new InkWell(
                          onTap: () {
                            // Navigator.pushNamed(conImage.asset,"assets/lecon1/.png"lecon3');
                            //print("tapped");
                            player.play(AssetSource('audio/lecon1/d.mp3'));
                          },
                          child:
                              Center(child: Image.asset("assets/lecon1/d.png")),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 6,
                      height: MediaQuery.of(context).size.height / 9,
                      child: Card(
                        child: new InkWell(
                          onTap: () {
                            // Navigator.pushNamed(conImage.asset,"assets/lecon1/.png"lecon4');
                            //print("tapped");
                            player.play(AssetSource('audio/lecon1/e.mp3'));
                          },
                          child:
                              Center(child: Image.asset("assets/lecon1/e.png")),
                        ),
                      ),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 6,
                      height: MediaQuery.of(context).size.height / 9,
                      child: Card(
                        child: new InkWell(
                          onTap: () {
                            // // // Navigator.pushNamed(conImage.asset,"assets/lecon1/.png"lecon1');
                            //print("tapped");
                            player.play(AssetSource('audio/lecon1/f.mp3'));
                          },
                          child:
                              Center(child: Image.asset("assets/lecon1/f.png")),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 6,
                      height: MediaQuery.of(context).size.height / 9,
                      child: Card(
                        child: new InkWell(
                          onTap: () {
                            // // // Navigator.pushNamed(conImage.asset,"assets/lecon1/.png"lecon1');
                            //print("tapped");
                            player.play(AssetSource('audio/lecon1/g.mp3'));
                          },
                          child:
                              Center(child: Image.asset("assets/lecon1/g.png")),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 6,
                      height: MediaQuery.of(context).size.height / 9,
                      child: Card(
                        child: new InkWell(
                          onTap: () {
                            // // // Navigator.pushNamed(conImage.asset,"assets/lecon1/.png"lecon1');
                            //print("tapped");
                            player.play(AssetSource('audio/lecon1/h.mp3'));
                          },
                          child:
                              Center(child: Image.asset("assets/lecon1/h.png")),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 6,
                      height: MediaQuery.of(context).size.height / 9,
                      child: Card(
                        child: new InkWell(
                          onTap: () {
                            // // // Navigator.pushNamed(conImage.asset,"assets/lecon1/.png"lecon1');
                            //print("tapped");
                            player.play(AssetSource('audio/lecon1/i.mp3'));
                          },
                          child:
                              Center(child: Image.asset("assets/lecon1/i.png")),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 6,
                      height: MediaQuery.of(context).size.height / 9,
                      child: Card(
                        child: new InkWell(
                          onTap: () {
                            // // // Navigator.pushNamed(conImage.asset,"assets/lecon1/.png"lecon1');
                            // //print("tapped");
                            player.play(AssetSource('audio/lecon1/j.mp3'));
                          },
                          child:
                              Center(child: Image.asset("assets/lecon1/j.png")),
                        ),
                      ),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 6,
                      height: MediaQuery.of(context).size.height / 9,
                      child: Card(
                        child: new InkWell(
                          onTap: () {
                            // // // Navigator.pushNamed(conImage.asset,"assets/lecon1/.png"lecon1');
                            //print("tapped");
                            player.play(AssetSource('audio/lecon1/k.mp3'));
                          },
                          child:
                              Center(child: Image.asset("assets/lecon1/k.png")),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 6,
                      height: MediaQuery.of(context).size.height / 9,
                      child: Card(
                        child: new InkWell(
                          onTap: () {
                            // // // Navigator.pushNamed(conImage.asset,"assets/lecon1/.png"lecon1');
                            //print("tapped");
                            player.play(AssetSource('audio/lecon1/l.mp3'));
                          },
                          child:
                              Center(child: Image.asset("assets/lecon1/l.png")),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 6,
                      height: MediaQuery.of(context).size.height / 9,
                      child: Card(
                        child: new InkWell(
                          onTap: () {
                            // // // Navigator.pushNamed(conImage.asset,"assets/lecon1/.png"lecon1');
                            //print("tapped");
                            player.play(AssetSource('audio/lecon1/m.mp3'));
                          },
                          child:
                              Center(child: Image.asset("assets/lecon1/m.png")),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 6,
                      height: MediaQuery.of(context).size.height / 9,
                      child: Card(
                        child: new InkWell(
                          onTap: () {
                            // // Navigator.pushNamed(conImage.asset,"assets/lecon1/.png"lecon1');
                            //print("tapped");
                            player.play(AssetSource('audio/lecon1/n.mp3'));
                          },
                          child:
                              Center(child: Image.asset("assets/lecon1/n.png")),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 6,
                      height: MediaQuery.of(context).size.height / 9,
                      child: Card(
                        child: new InkWell(
                          onTap: () {
                            // // Navigator.pushNamed(conImage.asset,"assets/lecon1/.png"lecon1');
                            //print("tapped");
                            player.play(AssetSource('audio/lecon1/o.mp3'));
                          },
                          child:
                              Center(child: Image.asset("assets/lecon1/o.png")),
                        ),
                      ),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 6,
                      height: MediaQuery.of(context).size.height / 9,
                      child: Card(
                        child: new InkWell(
                          onTap: () {
                            // // Navigator.pushNamed(conImage.asset,"assets/lecon1/.png"lecon1');
                            //print("tapped");
                            player.play(AssetSource('audio/lecon1/p.mp3'));
                          },
                          child:
                              Center(child: Image.asset("assets/lecon1/p.png")),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 6,
                      height: MediaQuery.of(context).size.height / 9,
                      child: Card(
                        child: new InkWell(
                          onTap: () {
                            // Navigator.pushNamed(conImage.asset,"assets/lecon1/.png"prealpha');
                            //print("tapped");
                            player.play(AssetSource('audio/lecon1/q.mp3'));
                          },
                          child:
                              Center(child: Image.asset("assets/lecon1/q.png")),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 6,
                      height: MediaQuery.of(context).size.height / 9,
                      child: Card(
                        child: new InkWell(
                          onTap: () {
                            // // Navigator.pushNamed(conImage.asset,"assets/lecon1/.png"lecon1');
                            //print("tapped");
                            player.play(AssetSource('audio/lecon1/r.mp3'));
                          },
                          child:
                              Center(child: Image.asset("assets/lecon1/r.png")),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 6,
                      height: MediaQuery.of(context).size.height / 9,
                      child: Card(
                        child: new InkWell(
                          onTap: () {
                            // Navigator.pushNamed(conImage.asset,"assets/lecon1/.png"lecon2');
                            //print("tapped");
                            player.play(AssetSource('audio/lecon1/s.mp3'));
                          },
                          child:
                              Center(child: Image.asset("assets/lecon1/s.png")),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 6,
                      height: MediaQuery.of(context).size.height / 9,
                      child: Card(
                        child: new InkWell(
                          onTap: () {
                            // Navigator.pushNamed(conImage.asset,"assets/lecon1/.png"lecon3');
                            //print("tapped");
                            player.play(AssetSource('audio/lecon1/t.mp3'));
                          },
                          child:
                              Center(child: Image.asset("assets/lecon1/t.png")),
                        ),
                      ),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 6,
                      height: MediaQuery.of(context).size.height / 9,
                      child: Card(
                        child: new InkWell(
                          onTap: () {
                            // Navigator.pushNamed(conImage.asset,"assets/lecon1/.png"prealpha');
                            //print("tapped");
                            player.play(AssetSource('audio/lecon1/u.mp3'));
                          },
                          child:
                              Center(child: Image.asset("assets/lecon1/u.png")),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 6,
                      height: MediaQuery.of(context).size.height / 9,
                      child: Card(
                        child: new InkWell(
                          onTap: () {
                            // // Navigator.pushNamed(conImage.asset,"assets/lecon1/.png"lecon1');
                            //print("tapped");
                            player.play(AssetSource('audio/lecon1/v.mp3'));
                          },
                          child:
                              Center(child: Image.asset("assets/lecon1/v.png")),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 6,
                      height: MediaQuery.of(context).size.height / 9,
                      child: Card(
                        child: new InkWell(
                          onTap: () {
                            // Navigator.pushNamed(conImage.asset,"assets/lecon1/.png"lecon2');
                            //print("tapped");
                            player.play(AssetSource('audio/lecon1/w.mp3'));
                          },
                          child:
                              Center(child: Image.asset("assets/lecon1/w.png")),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 6,
                      height: MediaQuery.of(context).size.height / 9,
                      child: Card(
                        child: new InkWell(
                          onTap: () {
                            // Navigator.pushNamed(conImage.asset,"assets/lecon1/.png"lecon3');
                            //print("tapped");
                            player.play(AssetSource('audio/lecon1/x.mp3'));
                          },
                          child:
                              Center(child: Image.asset("assets/lecon1/x.png")),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 6,
                      height: MediaQuery.of(context).size.height / 9,
                      child: Card(
                        child: new InkWell(
                          onTap: () {
                            // Navigator.pushNamed(conImage.asset,"assets/lecon1/.png"lecon3');
                            //print("tapped");
                            player.play(AssetSource('audio/lecon1/y.mp3'));
                          },
                          child:
                              Center(child: Image.asset("assets/lecon1/y.png")),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 6,
                      height: MediaQuery.of(context).size.height / 9,
                      child: Card(
                        child: new InkWell(
                          onTap: () {
                            // Navigator.pushNamed(conImage.asset,"assets/lecon1/.png"lecon3');
                            //print("tapped");
                            player.play(AssetSource('audio/lecon1/z.mp3'));
                          },
                          child:
                              Center(child: Image.asset("assets/lecon1/z.png")),
                        ),
                      ),
                    ),
                  ],
                ),
                // ),
              ],
            ),
            //articulation
            GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 150,
                    childAspectRatio: 3 / 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20),
                itemCount: myImages.length,
                itemBuilder: (BuildContext ctx, index) {
                  return InkWell(
                    onTap: () {
                      player.play(
                          AssetSource('audio/lecon1/${myImages[index]}.mp3'));
                    },
                    child: Image.asset("assets/lecon1/${myImages[index]}.png"),
                  );
                }),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
