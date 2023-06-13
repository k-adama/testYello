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

class Lecon42 extends StatefulWidget {
  const Lecon42({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<Lecon42> createState() => _Lecon42State();
}

class _Lecon42State extends State<Lecon42> {
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
  static Color thebackcolor23 = Colors.white;
  static Color thebackcolor24 = Colors.white;
  static Color thebackcolor25 = Colors.white;
  static Color thebackcolor26 = Colors.white;

  var colorArray = new List<Color>.filled(29, Colors.white, growable: true);
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
      thebackcolor22,
      thebackcolor23,
      thebackcolor24,
      thebackcolor20,
      thebackcolor21,
      thebackcolor22,
      thebackcolor23,
      thebackcolor24,
      thebackcolor25,
      thebackcolor26
    ];
  }

  String audio0 = 'audio/lecon42/phrase1.mp3';
  String audio1 = 'audio/lecon42/phrase2.mp3';
  String audio2 = 'audio/lecon42/phrase3.mp3';
  String audio3 = 'audio/lecon42/phrase4.mp3';
  // String audio4 = 'audio/lecon35/don.mp3';
  // String audio5 = 'audio/lecon35/dan.mp3';
  // String audio6 = 'audio/lecon35/do.mp3';
  // String audio7 = 'audio/lecon35/da.mp3';
  // String audio8 = 'audio/lecon35/do.mp3';
  // String audio9 = 'audio/lecon35/d.mp3';
  // String audio10 = 'audio/lecon35/d.mp3';
  // String audio11 = 'audio/lecon9/e.mp3';
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
    player.play(AssetSource('audio/lecon42/$thesound.mp3'));
  }

  void RepeatVoice() {
    player.play(AssetSource(theaudio));
  }

  void extraHilght(int i) async {
    setState(() {
      if (i == 7) {
        colorArray[7] = Colors.yellowAccent;
        colorArray[2] = Colors.white;
        colorArray[3] = Colors.white;
        colorArray[4] = Colors.white;
        colorArray[5] = Colors.white;
        colorArray[6] = Colors.white;
        colorArray[8] = Colors.white;
        colorArray[9] = Colors.white;
        colorArray[10] = Colors.white;
        colorArray[11] = Colors.white;
        colorArray[12] = Colors.white;
        colorArray[13] = Colors.white;
        colorArray[14] = Colors.white;
        colorArray[15] = Colors.white;
        colorArray[16] = Colors.white;
      } else if (i == 8) {
        colorArray[7] = Colors.white;
        colorArray[8] = Colors.yellowAccent;
        colorArray[9] = Colors.white;
        colorArray[2] = Colors.white;
        colorArray[3] = Colors.white;
        colorArray[4] = Colors.white;
        colorArray[5] = Colors.white;
        colorArray[6] = Colors.white;
        colorArray[10] = Colors.white;
        colorArray[11] = Colors.white;
        colorArray[12] = Colors.white;
        colorArray[13] = Colors.white;
        colorArray[14] = Colors.white;
        colorArray[15] = Colors.white;
        colorArray[16] = Colors.white;
      } else if (i == 16) {
        colorArray[7] = Colors.white;
        colorArray[8] = Colors.white;
        colorArray[16] = Colors.yellowAccent;
        colorArray[9] = Colors.white;
        colorArray[2] = Colors.white;
        colorArray[3] = Colors.white;
        colorArray[4] = Colors.white;
        colorArray[5] = Colors.white;
        colorArray[6] = Colors.white;
        colorArray[10] = Colors.white;
        colorArray[11] = Colors.white;
        colorArray[12] = Colors.white;
        colorArray[13] = Colors.white;
        colorArray[14] = Colors.white;
        colorArray[15] = Colors.white;
      } else if (i == 2) {
        colorArray[7] = Colors.white;
        colorArray[8] = Colors.white;
        colorArray[2] = Colors.yellowAccent;
        colorArray[9] = Colors.white;
        colorArray[3] = Colors.white;
        colorArray[4] = Colors.white;
        colorArray[5] = Colors.white;
        colorArray[6] = Colors.white;
        colorArray[10] = Colors.white;
        colorArray[11] = Colors.white;
        colorArray[12] = Colors.white;
        colorArray[13] = Colors.white;
        colorArray[14] = Colors.white;
        colorArray[15] = Colors.white;
        colorArray[16] = Colors.white;
      } else if (i == 3) {
        colorArray[7] = Colors.white;
        colorArray[8] = Colors.white;
        colorArray[3] = Colors.yellowAccent;
        colorArray[9] = Colors.white;
        colorArray[2] = Colors.white;
        colorArray[4] = Colors.white;
        colorArray[5] = Colors.white;
        colorArray[6] = Colors.white;
        colorArray[10] = Colors.white;
        colorArray[11] = Colors.white;
        colorArray[12] = Colors.white;
        colorArray[13] = Colors.white;
        colorArray[14] = Colors.white;
        colorArray[15] = Colors.white;
        colorArray[16] = Colors.white;
      } else if (i == 4) {
        colorArray[7] = Colors.white;
        colorArray[8] = Colors.white;
        colorArray[4] = Colors.yellowAccent;
        colorArray[9] = Colors.white;
        colorArray[2] = Colors.white;
        colorArray[3] = Colors.white;
        colorArray[5] = Colors.white;
        colorArray[6] = Colors.white;
        colorArray[10] = Colors.white;
        colorArray[11] = Colors.white;
        colorArray[12] = Colors.white;
        colorArray[13] = Colors.white;
        colorArray[14] = Colors.white;
        colorArray[15] = Colors.white;
        colorArray[16] = Colors.white;
      } else if (i == 5) {
        colorArray[7] = Colors.white;
        colorArray[8] = Colors.white;
        colorArray[5] = Colors.yellowAccent;
        colorArray[9] = Colors.white;
        colorArray[2] = Colors.white;
        colorArray[3] = Colors.white;
        colorArray[4] = Colors.white;
        colorArray[6] = Colors.white;
        colorArray[10] = Colors.white;
        colorArray[11] = Colors.white;
        colorArray[12] = Colors.white;
        colorArray[13] = Colors.white;
        colorArray[14] = Colors.white;
        colorArray[15] = Colors.white;
        colorArray[16] = Colors.white;
      } else if (i == 6) {
        colorArray[7] = Colors.white;
        colorArray[8] = Colors.white;
        colorArray[6] = Colors.yellowAccent;
        colorArray[9] = Colors.white;
        colorArray[2] = Colors.white;
        colorArray[3] = Colors.white;
        colorArray[4] = Colors.white;
        colorArray[5] = Colors.white;
        colorArray[10] = Colors.white;
        colorArray[11] = Colors.white;
        colorArray[12] = Colors.white;
        colorArray[13] = Colors.white;
        colorArray[14] = Colors.white;
        colorArray[15] = Colors.white;
        colorArray[16] = Colors.white;
      } else if (i == 10) {
        colorArray[7] = Colors.white;
        colorArray[8] = Colors.white;
        colorArray[10] = Colors.yellowAccent;
        colorArray[9] = Colors.white;
        colorArray[2] = Colors.white;
        colorArray[3] = Colors.white;
        colorArray[4] = Colors.white;
        colorArray[5] = Colors.white;
        colorArray[6] = Colors.white;
        colorArray[11] = Colors.white;
        colorArray[12] = Colors.white;
        colorArray[13] = Colors.white;
        colorArray[14] = Colors.white;
        colorArray[15] = Colors.white;
        colorArray[16] = Colors.white;
      } else if (i == 11) {
        colorArray[7] = Colors.white;
        colorArray[8] = Colors.white;
        colorArray[11] = Colors.yellowAccent;
        colorArray[9] = Colors.white;
        colorArray[2] = Colors.white;
        colorArray[3] = Colors.white;
        colorArray[4] = Colors.white;
        colorArray[5] = Colors.white;
        colorArray[6] = Colors.white;
        colorArray[10] = Colors.white;
        colorArray[12] = Colors.white;
        colorArray[13] = Colors.white;
        colorArray[14] = Colors.white;
        colorArray[15] = Colors.white;
        colorArray[16] = Colors.white;
      } else if (i == 12) {
        colorArray[7] = Colors.white;
        colorArray[8] = Colors.white;
        colorArray[12] = Colors.yellowAccent;
        colorArray[9] = Colors.white;
        colorArray[2] = Colors.white;
        colorArray[3] = Colors.white;
        colorArray[4] = Colors.white;
        colorArray[5] = Colors.white;
        colorArray[6] = Colors.white;
        colorArray[10] = Colors.white;
        colorArray[11] = Colors.white;
        colorArray[13] = Colors.white;
        colorArray[14] = Colors.white;
        colorArray[15] = Colors.white;
        colorArray[16] = Colors.white;
      } else if (i == 13) {
        colorArray[7] = Colors.white;
        colorArray[8] = Colors.white;
        colorArray[13] = Colors.yellowAccent;
        colorArray[9] = Colors.white;
        colorArray[2] = Colors.white;
        colorArray[3] = Colors.white;
        colorArray[4] = Colors.white;
        colorArray[5] = Colors.white;
        colorArray[6] = Colors.white;
        colorArray[10] = Colors.white;
        colorArray[11] = Colors.white;
        colorArray[12] = Colors.white;
        colorArray[14] = Colors.white;
        colorArray[15] = Colors.white;
        colorArray[16] = Colors.white;
      } else if (i == 14) {
        colorArray[7] = Colors.white;
        colorArray[8] = Colors.white;
        colorArray[14] = Colors.yellowAccent;
        colorArray[9] = Colors.white;
        colorArray[2] = Colors.white;
        colorArray[3] = Colors.white;
        colorArray[4] = Colors.white;
        colorArray[5] = Colors.white;
        colorArray[6] = Colors.white;
        colorArray[10] = Colors.white;
        colorArray[11] = Colors.white;
        colorArray[12] = Colors.white;
        colorArray[13] = Colors.white;
        colorArray[15] = Colors.white;
        colorArray[16] = Colors.white;
      } else if (i == 15) {
        colorArray[7] = Colors.white;
        colorArray[8] = Colors.white;
        colorArray[15] = Colors.yellowAccent;
        colorArray[9] = Colors.white;
        colorArray[2] = Colors.white;
        colorArray[3] = Colors.white;
        colorArray[4] = Colors.white;
        colorArray[5] = Colors.white;
        colorArray[6] = Colors.white;
        colorArray[10] = Colors.white;
        colorArray[11] = Colors.white;
        colorArray[12] = Colors.white;
        colorArray[13] = Colors.white;
        colorArray[14] = Colors.white;
        colorArray[16] = Colors.white;
      } else if (i == 16) {
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
        colorArray[12] = Colors.white;
        colorArray[13] = Colors.white;
        colorArray[14] = Colors.white;
        colorArray[16] = Colors.yellowAccent;
      } else if (i == 17) {
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
        colorArray[12] = Colors.white;
        colorArray[13] = Colors.white;
        colorArray[14] = Colors.white;
        colorArray[16] = Colors.white;
        colorArray[17] = Colors.yellowAccent;
      } else if (i == 18) {
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
        colorArray[12] = Colors.white;
        colorArray[13] = Colors.white;
        colorArray[14] = Colors.white;
        colorArray[16] = Colors.white;
        colorArray[17] = Colors.white;
        colorArray[18] = Colors.yellowAccent;
        colorArray[19] = Colors.white;
        colorArray[20] = Colors.white;
        colorArray[21] = Colors.white;
        colorArray[22] = Colors.white;
        colorArray[23] = Colors.white;
        colorArray[24] = Colors.white;
        colorArray[25] = Colors.white;
        colorArray[26] = Colors.white;
      } else if (i == 19) {
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
        colorArray[12] = Colors.white;
        colorArray[13] = Colors.white;
        colorArray[14] = Colors.white;
        colorArray[16] = Colors.white;
        colorArray[17] = Colors.white;
        colorArray[18] = Colors.white;
        colorArray[19] = Colors.yellowAccent;
        colorArray[20] = Colors.white;
        colorArray[21] = Colors.white;
        colorArray[22] = Colors.white;
        colorArray[23] = Colors.white;
        colorArray[24] = Colors.white;
        colorArray[25] = Colors.white;
        colorArray[26] = Colors.white;
      } else if (i == 20) {
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
        colorArray[12] = Colors.white;
        colorArray[13] = Colors.white;
        colorArray[14] = Colors.white;
        colorArray[16] = Colors.white;
        colorArray[17] = Colors.white;
        colorArray[18] = Colors.white;
        colorArray[19] = Colors.white;
        colorArray[20] = Colors.yellowAccent;
        colorArray[21] = Colors.white;
        colorArray[22] = Colors.white;
        colorArray[23] = Colors.white;
        colorArray[24] = Colors.white;
        colorArray[25] = Colors.white;
        colorArray[26] = Colors.white;
      } else if (i == 21) {
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
        colorArray[12] = Colors.white;
        colorArray[13] = Colors.white;
        colorArray[14] = Colors.white;
        colorArray[16] = Colors.white;
        colorArray[17] = Colors.white;
        colorArray[18] = Colors.white;
        colorArray[19] = Colors.white;
        colorArray[20] = Colors.white;
        colorArray[21] = Colors.yellowAccent;
        colorArray[22] = Colors.white;
        colorArray[23] = Colors.white;
        colorArray[24] = Colors.white;
        colorArray[25] = Colors.white;
        colorArray[26] = Colors.white;
      } else if (i == 22) {
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
        colorArray[12] = Colors.white;
        colorArray[13] = Colors.white;
        colorArray[14] = Colors.white;
        colorArray[16] = Colors.white;
        colorArray[17] = Colors.white;
        colorArray[18] = Colors.white;
        colorArray[19] = Colors.white;
        colorArray[20] = Colors.white;
        colorArray[21] = Colors.white;
        colorArray[22] = Colors.yellowAccent;
        colorArray[23] = Colors.white;
        colorArray[24] = Colors.white;
        colorArray[25] = Colors.white;
        colorArray[26] = Colors.white;
      } else if (i == 23) {
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
        colorArray[12] = Colors.white;
        colorArray[13] = Colors.white;
        colorArray[14] = Colors.white;
        colorArray[16] = Colors.white;
        colorArray[17] = Colors.white;
        colorArray[18] = Colors.white;
        colorArray[19] = Colors.white;
        colorArray[20] = Colors.white;
        colorArray[21] = Colors.white;
        colorArray[22] = Colors.white;
        colorArray[23] = Colors.yellowAccent;
        colorArray[24] = Colors.white;
        colorArray[25] = Colors.white;
        colorArray[26] = Colors.white;
      } else if (i == 24) {
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
        colorArray[12] = Colors.white;
        colorArray[13] = Colors.white;
        colorArray[14] = Colors.white;
        colorArray[16] = Colors.white;
        colorArray[17] = Colors.white;
        colorArray[18] = Colors.white;
        colorArray[19] = Colors.white;
        colorArray[20] = Colors.white;
        colorArray[21] = Colors.white;
        colorArray[22] = Colors.white;
        colorArray[23] = Colors.white;
        colorArray[24] = Colors.yellowAccent;
        colorArray[25] = Colors.white;
        colorArray[26] = Colors.white;
      } else if (i == 25) {
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
        colorArray[12] = Colors.white;
        colorArray[13] = Colors.white;
        colorArray[14] = Colors.white;
        colorArray[16] = Colors.white;
        colorArray[17] = Colors.white;
        colorArray[18] = Colors.white;
        colorArray[19] = Colors.white;
        colorArray[20] = Colors.white;
        colorArray[21] = Colors.white;
        colorArray[22] = Colors.white;
        colorArray[23] = Colors.white;
        colorArray[24] = Colors.white;
        colorArray[25] = Colors.yellowAccent;
        colorArray[26] = Colors.white;
      } else if (i == 26) {
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
        colorArray[12] = Colors.white;
        colorArray[13] = Colors.white;
        colorArray[14] = Colors.white;
        colorArray[16] = Colors.white;
        colorArray[17] = Colors.white;
        colorArray[18] = Colors.white;
        colorArray[19] = Colors.white;
        colorArray[20] = Colors.white;
        colorArray[21] = Colors.white;
        colorArray[22] = Colors.white;
        colorArray[23] = Colors.white;
        colorArray[24] = Colors.white;
        colorArray[25] = Colors.white;
        colorArray[26] = Colors.yellowAccent;
      } else {
        colorArray[7] = Colors.white;
        colorArray[8] = Colors.white;
        colorArray[9] = Colors.yellowAccent;
        colorArray[2] = Colors.white;
        colorArray[3] = Colors.white;
        colorArray[4] = Colors.white;
        colorArray[5] = Colors.white;
        colorArray[6] = Colors.white;
        colorArray[10] = Colors.white;
        colorArray[11] = Colors.white;
        colorArray[12] = Colors.white;
        colorArray[13] = Colors.white;
        colorArray[14] = Colors.white;
        colorArray[15] = Colors.white;
        colorArray[16] = Colors.white;
        colorArray[17] = Colors.white;
        colorArray[18] = Colors.white;
        colorArray[19] = Colors.white;
        colorArray[20] = Colors.white;
        colorArray[21] = Colors.white;
        colorArray[22] = Colors.white;
        colorArray[23] = Colors.white;
        colorArray[24] = Colors.white;
        colorArray[25] = Colors.white;
        colorArray[26] = Colors.white;
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
      } else {
        theaudio = audio0;
      }
      //player.setAsset(theaudio);
      player.play(AssetSource(theaudio));
      try {
        if (state > 3) {
          state = 0;
        }
        for (int i = 0; i < 28; i++) {
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
    });
  }

  //Lire phrase et les mots
  Text MesPhrases({
    Color? color,
    String? text,
    int i = 0,
    TextDecoration? underline,
    // FontWeight? font,
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
            ..strokeJoin = StrokeJoin.round,
          decoration: underline),
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
          widget.title + 'Leçon 42',
          style:
              TextStyle(color: Color(0xff000000), fontStyle: FontStyle.italic),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10), //apply padding to all four sides
                child: Text(
                  'La facture',
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.start,
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MesPhrases(
                      text:
                          "Aya se rend au marché pour faire ses achats du mois.",
                      i: 0),
                  SizedBox(
                    height: 10,
                  ),
                  MesPhrases(
                      text:
                          "Elle achète 25 kg de riz local à 600 F CFA/ kilogramme, 10 litres d’huile à 500 F CFA/ litre, 2 sacs d’ognon à 11 200 F CFA le sac et 8 kg de tomate à 1000 F CFA le kilogramme.",
                      i: 1),
                  SizedBox(
                    height: 10,
                  ),
                  MesPhrases(
                      text: "Elle exige une facture au commerçant.", i: 2),
                  SizedBox(
                    height: 10,
                  ),
                  MesPhrases(
                      text: "Aidons la commerçante AYA à remplir la facture.",
                      i: 3),
                ],
              ),

              SizedBox(height: 15),
              SizedBox(
                height: MediaQuery.of(context).size.height / 0.8,
                child: Image(
                  image: AssetImage('assets/lecon42/imgL42.png'),
                ),
              ),

              // le text de la fin
              InkWell(
                onTap: () {
                  extraHilght(4);
                  player.play(AssetSource('audio/lecon42/facture.mp3'));
                },
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          MesPhrases(
                              text:
                                  "Arrêtée la présente facture à la somme de :",
                              i: 4,
                              underline: TextDecoration.underline),
                          MesPhrases(
                              text: " Cinquante mille quatre cent.", i: 4),
                        ],
                      ),
                      MesPhrases(text: " francs CFA", i: 4),
                    ]),
              ),

              SizedBox(height: 15),

              InkWell(
                onTap: () {
                  extraHilght(5);
                  player.play(AssetSource('audio/lecon42/model.mp3'));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    MesPhrases(text: "Modèle de facture", i: 5),
                  ],
                ),
              ),

              SizedBox(height: 10),

              SizedBox(
                height: MediaQuery.of(context).size.height / 0.5,
                width: MediaQuery.of(context).size.width,
                child: Image(
                    image: AssetImage('assets/lecon42/img2.png'),
                    fit: BoxFit.fitWidth),
              ),
            ],
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
