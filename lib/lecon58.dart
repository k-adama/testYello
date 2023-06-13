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

class Lecon58 extends StatefulWidget {
  const Lecon58({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<Lecon58> createState() => _Lecon58State();
}

class _Lecon58State extends State<Lecon58> {
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

  String audio0 = 'audio/lecon58/phrase1.mp3';
  String audio1 = 'audio/lecon58/victorine.mp3';
  String audio2 = 'audio/lecon58/vivriers.mp3';
  String audio3 = 'audio/lecon58/victo.mp3';
  String audio4 = 'audio/lecon58/vivri.mp3';
  String audio5 = 'audio/lecon58/vi.mp3';
  String audio6 = 'audio/lecon58/vi.mp3';
  String audio7 = 'audio/lecon58/v.mp3';
  String audio8 = 'audio/lecon58/v.mp3';
  String audio9 = 'audio/lecon58/.mp3';
  // String audio10 = 'audio/lecon58/m.mp3';
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
    player.play(AssetSource('audio/lecon50/$thesound.mp3'));
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
        colorArray[0] = Colors.white;
        colorArray[1] = Colors.white;
        colorArray[2] = Colors.white;
        colorArray[3] = Colors.white;
        colorArray[4] = Colors.white;
        colorArray[5] = Colors.white;
        colorArray[6] = Colors.white;
        colorArray[7] = Colors.white;
        colorArray[8] = Colors.white;
        colorArray[9] = Colors.white;
        colorArray[10] = Colors.white;
        colorArray[11] = Colors.yellowAccent;
        colorArray[12] = Colors.white;
      } else if (i == 12) {
        colorArray[0] = Colors.white;
        colorArray[1] = Colors.white;
        colorArray[2] = Colors.white;
        colorArray[3] = Colors.white;
        colorArray[4] = Colors.white;
        colorArray[5] = Colors.white;
        colorArray[6] = Colors.white;
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
      } else if (state == 9) {
        theaudio = audio9;
      } else {
        theaudio = audio0;
      }
      //player.setAsset(theaudio);
      player.play(AssetSource(theaudio));
      try {
        if (state > 9) {
          state = 0;
        }
        for (int i = 0; i < 20; i++) {
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
          widget.title + 'Leçon 58',
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
                'v / V',
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
                          image: AssetImage('assets/lecon58/imgL58.png'),
                          width: 250,
                        ),
                      ),

                      //--- Menu -----------------------
                    ],
                  ),
                ),

                //  phrase de droite
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          letters(
                              text: "V",
                              font: FontWeight.bold,
                              color: Colors.red,
                              i: 0),
                          letters(
                              text: "ictorine ", font: FontWeight.w600, i: 0),
                          letters(
                              text: "v",
                              font: FontWeight.bold,
                              color: Colors.red,
                              i: 0),
                          letters(
                              text: "end des produits ",
                              font: FontWeight.w600,
                              i: 0),
                          letters(
                              text: "v",
                              font: FontWeight.bold,
                              color: Colors.red,
                              i: 0),
                          letters(text: "i", font: FontWeight.w600, i: 0),
                          letters(
                              text: "v",
                              font: FontWeight.bold,
                              color: Colors.red,
                              i: 0),
                          letters(
                              text: "riers au", font: FontWeight.w600, i: 0),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          letters(
                              text: "marché de ", font: FontWeight.w600, i: 0),
                          letters(
                              text: "v",
                              font: FontWeight.bold,
                              color: Colors.red,
                              i: 0),
                          letters(text: "a", font: FontWeight.w600, i: 0),
                          letters(
                              text: "v",
                              font: FontWeight.bold,
                              color: Colors.red,
                              i: 0),
                          letters(text: "oua", font: FontWeight.w600, i: 0),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          letters(
                              text: "V",
                              font: FontWeight.w600,
                              i: 1,
                              color: Colors.red),
                          letters(
                            text: "ictorine",
                            font: FontWeight.w600,
                            i: 1,
                          ),
                          Spacer(),
                          letters(
                              text: "v",
                              font: FontWeight.bold,
                              color: Colors.red,
                              i: 2),
                          letters(text: "i", font: FontWeight.w600, i: 2),
                          letters(
                              text: "v",
                              font: FontWeight.bold,
                              color: Colors.red,
                              i: 2),
                          letters(text: "riers", font: FontWeight.w600, i: 2),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          letters(
                              text: "V",
                              font: FontWeight.w600,
                              i: 3,
                              color: Colors.red),
                          letters(
                            text: "icto",
                            font: FontWeight.w600,
                            i: 3,
                          ),
                          Spacer(),
                          letters(
                              text: "v",
                              font: FontWeight.bold,
                              color: Colors.red,
                              i: 4),
                          letters(text: "i", font: FontWeight.w600, i: 4),
                          letters(
                              text: "v",
                              font: FontWeight.bold,
                              color: Colors.red,
                              i: 4),
                          letters(text: "ri", font: FontWeight.w600, i: 4),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          letters(
                              text: "V",
                              font: FontWeight.w600,
                              i: 5,
                              color: Colors.red),
                          letters(
                            text: "i",
                            font: FontWeight.w600,
                            i: 5,
                          ),
                          Spacer(),
                          letters(
                              text: "v",
                              font: FontWeight.w600,
                              i: 6,
                              color: Colors.red),
                          letters(
                            text: "i",
                            font: FontWeight.w600,
                            i: 6,
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          letters(
                              text: "V",
                              font: FontWeight.w600,
                              i: 7,
                              color: Colors.red),
                          Spacer(),
                          letters(
                              text: "v",
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
                              player.play(AssetSource('audio/lecon58/v.mp3'));
                            },
                            child: Center(
                                child: Image.asset(
                              "assets/lecon58/v1.png",
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
                              player.play(AssetSource('audio/lecon58/v.mp3'));
                            },
                            child: Center(
                                child: Image.asset("assets/lecon58/v2.png")),
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
                              player.play(AssetSource('audio/lecon58/v.mp3'));
                            },
                            child: Center(
                                child: Image.asset("assets/lecon58/v3.png")),
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
                              player.play(AssetSource('audio/lecon58/v.mp3'));
                            },
                            child: Center(
                                child: Image.asset("assets/lecon58/v4.png")),
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
                        width: MediaQuery.of(context).size.width / 9,
                        height: MediaQuery.of(context).size.height / 9,
                        child: Card(
                          child: new InkWell(
                            onTap: () {
                              // // Navigator.pushNamed(context, '/lecon1');
                              //print("tapped");
                              player.play(AssetSource('audio/lecon58/va.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon58/va.png")),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 9,
                        height: MediaQuery.of(context).size.height / 9,
                        child: Card(
                          child: new InkWell(
                            onTap: () {
                              // // Navigator.pushNamed(context, '/lecon1');
                              //print("tapped");
                              player.play(AssetSource('audio/lecon58/vo.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon58/vo.png")),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 9,
                        height: MediaQuery.of(context).size.height / 9,
                        child: Card(
                          child: new InkWell(
                            onTap: () {
                              // // Navigator.pushNamed(context, '/lecon1');
                              //print("tapped");
                              player.play(AssetSource('audio/lecon58/vu.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon58/vu.png")),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 9,
                        height: MediaQuery.of(context).size.height / 9,
                        child: Card(
                          child: new InkWell(
                            onTap: () {
                              // // Navigator.pushNamed(context, '/lecon1');
                              //print("tapped");
                              player.play(AssetSource('audio/lecon58/vi.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon58/vi.png")),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 9,
                        height: MediaQuery.of(context).size.height / 9,
                        child: Card(
                          child: new InkWell(
                            onTap: () {
                              // // Navigator.pushNamed(context, '/lecon1');
                              //print("tapped");
                              player.play(AssetSource('audio/lecon58/vou.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon58/vou.png")),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 9,
                        height: MediaQuery.of(context).size.height / 9,
                        child: Card(
                          child: new InkWell(
                            onTap: () {
                              // // Navigator.pushNamed(context, '/lecon1');
                              //print("tapped");
                              player.play(AssetSource('audio/lecon58/von.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon58/von.png")),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 9,
                        height: MediaQuery.of(context).size.height / 9,
                        child: Card(
                          child: new InkWell(
                            onTap: () {
                              // // Navigator.pushNamed(context, '/lecon1');
                              //print("tapped");
                              player.play(AssetSource('audio/lecon58/vai.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon58/vai.png")),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 9,
                        height: MediaQuery.of(context).size.height / 9,
                        child: Card(
                          child: new InkWell(
                            onTap: () {
                              // // Navigator.pushNamed(context, '/lecon1');
                              //print("tapped");
                              player.play(AssetSource('audio/lecon58/van.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon58/van.png")),
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
                        width: MediaQuery.of(context).size.width / 9,
                        height: MediaQuery.of(context).size.height / 9,
                        child: Card(
                          child: new InkWell(
                            onTap: () {
                              // // Navigator.pushNamed(context, '/lecon1');
                              //print("tapped");
                              player.play(AssetSource('audio/lecon58/ven.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon58/ven.png")),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 9,
                        height: MediaQuery.of(context).size.height / 9,
                        child: Card(
                          child: new InkWell(
                            onTap: () {
                              // // Navigator.pushNamed(context, '/lecon1');
                              //print("tapped");
                              player.play(AssetSource('audio/lecon58/ven.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon58/vem.png")),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 9,
                        height: MediaQuery.of(context).size.height / 9,
                        child: Card(
                          child: new InkWell(
                            onTap: () {
                              // // Navigator.pushNamed(context, '/lecon1');
                              //print("tapped");
                              player.play(AssetSource('audio/lecon58/vin.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon58/vin.png")),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 9,
                        height: MediaQuery.of(context).size.height / 9,
                        child: Card(
                          child: new InkWell(
                            onTap: () {
                              // // Navigator.pushNamed(context, '/lecon1');
                              //print("tapped");
                              player.play(AssetSource('audio/lecon58/vom.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon58/vom.png")),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 9,
                        height: MediaQuery.of(context).size.height / 9,
                        child: Card(
                          child: new InkWell(
                            onTap: () {
                              // // Navigator.pushNamed(context, '/lecon1');
                              //print("tapped");
                              player.play(AssetSource('audio/lecon58/voi.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon58/voi.png")),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 9,
                        height: MediaQuery.of(context).size.height / 9,
                        child: Card(
                          child: new InkWell(
                            onTap: () {
                              // // Navigator.pushNamed(context, '/lecon1');
                              //print("tapped");
                              player.play(AssetSource('audio/lecon58/ve1.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon58/ve1.png")),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 9,
                        height: MediaQuery.of(context).size.height / 9,
                        child: Card(
                          child: new InkWell(
                            onTap: () {
                              // // Navigator.pushNamed(context, '/lecon1');
                              //print("tapped");
                              player.play(AssetSource('audio/lecon58/ve2.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon58/ve2.png")),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 9,
                        height: MediaQuery.of(context).size.height / 9,
                        child: Card(
                          child: new InkWell(
                            onTap: () {
                              // // Navigator.pushNamed(context, '/lecon1');
                              //print("tapped");
                              player.play(AssetSource('audio/lecon58/ve.mp3'));
                            },
                            child: Center(
                              child: Center(
                                  child: Image.asset("assets/lecon58/ve.png")),
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
                  child: InkWell(
                    onTap: () {
                      extraHilght(11);
                      player.play(AssetSource('audio/lecon58/valise.mp3'));
                    },
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage('assets/lecon58/valise.png'),
                          width: 300,
                          height: 200,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            letters(
                              text: "Une ",
                              i: 11,
                            ),
                            letters(
                              text: "v",
                              font: FontWeight.bold,
                              color: Colors.red,
                              i: 11,
                            ),
                            letters(
                              text: "alise",
                              i: 11,
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
                  padding: EdgeInsets.only(left: 50, bottom: 50, top: 20),
                  child: InkWell(
                    onTap: () {
                      extraHilght(12);
                      player.play(AssetSource('audio/lecon58/phrase2.mp3'));
                    },
                    child: Column(children: [
                      letters(
                          text:
                              '''Victorine est une commerçante de produits vivriers. Victorine est
cultivatrice de produits vivriers. Chaque matin, elle se rend dans
son champ pour nettoyer les mauvaises herbes. C’est une femme
très courageuse. Des remorques transportent ses produits à Abidjan
pour les vendre en gros et en détail.''',
                          i: 12),
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
