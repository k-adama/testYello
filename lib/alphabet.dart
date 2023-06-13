import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:audioplayers/audioplayers.dart';
import 'menu.dart';
import 'ecrire.dart';
import 'package:shared_preferences/shared_preferences.dart';

extension ColorExtension on String {
  toColor7() {
    var hexString = this;
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}

class Alphabet extends StatefulWidget {
  const Alphabet({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<Alphabet> createState() => _AlphabetState();
}

class _AlphabetState extends State<Alphabet> {
  int _counter = 0;
  final player = AudioPlayer();

  void playSound(String thesound) {
    //player.play(AssetSource('audio/lecon1/$thesound.mp3'));
    player.play(AssetSource('audio/alphabet_lecture/lire$thesound.mp3'));
    print(thesound);
  }

  void writeField(int index) {
    preferences.setInt('index', index);
    Navigator.pushReplacementNamed(context, '/ecrire');
  }

  late SharedPreferences preferences;

  List letterList = [
    'a',
    'b',
    'c',
    'd',
    'e',
    'f',
    'g',
    'h',
    'i',
    'j',
    'k',
    'l',
    'm',
    'n',
    'o',
    'p',
    'q',
    'r',
    's',
    't',
    'u',
    'v',
    'w',
    'x',
    'y',
    'z'
  ];

  @override
  void initState() {
    super.initState();
    init();
  }

  Future init() async {
    preferences = await SharedPreferences.getInstance();
  }

  @override
  Widget build(BuildContext context) {
    onWillPop:
    () async {
      // show the snackbar with some text
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('The System Back Button is Deactivated')));
      return false;
    };
    return Scaffold(
      //backgroundColor: '#fcca0c'.toColor2(),
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 50,
        backgroundColor: '#fcca0c'.toColor7(),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          tooltip: "Close",
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/menu');
          },
        ),
        title: Text(
          widget.title + 'Les lettres de l\'alphabets',
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
              padding: EdgeInsets.all(10), //apply padding to all four sides
              child: Text(
                'Alphabets',
                style: TextStyle(fontSize: 25),
              ),
            ),
// --- Ligne  1 -------------
            Row(
              // Ligne 1
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox(
                  width: 80,
                  height: 60,
                  child: Card(
                    color: Colors.white,
                    child: new InkWell(
                      onLongPress: () {
                        for (var i = 0; i < 1; i++) playSound(letterList[i]);
                      },
                      onTap: () {
                        for (var i = 0; i < 1; i++) writeField(i);
                        for (var i = 0; i < 1; i++) playSound(letterList[i]);
                      },
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: Image.asset(
                                    "assets/lecon/a.png",
                                    fit: BoxFit.cover,
                                  )),
                              // SizedBox(
                              //   width: 30,
                              //   height: 50,
                              //   child: Text('A',
                              //       style: TextStyle(
                              //           fontSize: 40, fontFamily: 'Poppins')),
                              // ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 150,
                  height: 75,
                  child: Card(
                    color: Color.fromRGBO(252, 202, 12, 1),
                    child: new InkWell(
                      onLongPress: () {
                        for (var i = 1; i < 2; i++) playSound(letterList[i]);
                      },
                      onTap: () {
                        for (var i = 1; i < 2; i++) writeField(i);
                        for (var i = 1; i < 2; i++) playSound(letterList[i]);
                      },
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              SizedBox(
                                width: 30,
                                height: 50,
                                child: Text('b',
                                    style: TextStyle(
                                        fontSize: 40, fontFamily: 'Poppins')),
                              ),
                              // SizedBox(
                              //   width: 30,
                              //   height: 50,
                              //   child: Text('B',
                              //       style: TextStyle(
                              //           fontSize: 40, fontFamily: 'Poppins')),
                              // ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 150,
                  height: 75,
                  child: Card(
                    color: Color.fromRGBO(252, 202, 12, 1),
                    child: new InkWell(
                      onLongPress: () {
                        for (var i = 2; i < 3; i++) playSound(letterList[i]);
                      },
                      onTap: () {
                        for (var i = 2; i < 3; i++) writeField(i);
                        for (var i = 2; i < 3; i++) playSound(letterList[i]);
                      },
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              SizedBox(
                                width: 30,
                                height: 50,
                                child: Text('c',
                                    style: TextStyle(
                                        fontSize: 40, fontFamily: 'Poppins')),
                              ),
                              // SizedBox(
                              //   width: 30,
                              //   height: 50,
                              //   child: Text('C',
                              //       style: TextStyle(
                              //           fontSize: 40, fontFamily: 'Poppins')),
                              // ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 150,
                  height: 75,
                  child: Card(
                    color: Color.fromRGBO(252, 202, 12, 1),
                    child: new InkWell(
                      onLongPress: () {
                        for (var i = 3; i < 4; i++) playSound(letterList[i]);
                      },
                      onTap: () {
                        for (var i = 3; i < 4; i++) writeField(i);
                        for (var i = 3; i < 4; i++) playSound(letterList[i]);
                      },
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              SizedBox(
                                width: 30,
                                height: 50,
                                child: Text('d',
                                    style: TextStyle(
                                        fontSize: 40, fontFamily: 'Poppins')),
                              ),
                              // SizedBox(
                              //   width: 30,
                              //   height: 50,
                              //   child: Text('D',
                              //       style: TextStyle(
                              //           fontSize: 40, fontFamily: 'Poppins')),
                              // ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                // Expanded(
              ],
            ),
            // --- Ligne  2 -------------
            Row(
              // Ligne 2
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox(
                  width: 150,
                  height: 75,
                  child: Card(
                    color: Color.fromRGBO(252, 202, 12, 1),
                    child: new InkWell(
                      onLongPress: () {
                        for (var i = 4; i < 5; i++) playSound(letterList[i]);
                      },
                      onTap: () {
                        for (var i = 4; i < 5; i++) writeField(i);
                        for (var i = 4; i < 5; i++) playSound(letterList[i]);
                      },
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              SizedBox(
                                width: 30,
                                height: 50,
                                child: Text('e',
                                    style: TextStyle(
                                        fontSize: 40, fontFamily: 'Poppins')),
                              ),
                              // SizedBox(
                              //   width: 30,
                              //   height: 50,
                              //   child: Text('E',
                              //       style: TextStyle(
                              //           fontSize: 40, fontFamily: 'Poppins')),
                              // ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 150,
                  height: 75,
                  child: Card(
                    color: Color.fromRGBO(252, 202, 12, 1),
                    child: new InkWell(
                      onLongPress: () {
                        for (var i = 5; i < 6; i++) playSound(letterList[i]);
                      },
                      onTap: () {
                        for (var i = 5; i < 6; i++) writeField(i);
                        for (var i = 5; i < 6; i++) playSound(letterList[i]);
                      },
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              SizedBox(
                                width: 30,
                                height: 50,
                                child: Text('f',
                                    style: TextStyle(
                                        fontSize: 40, fontFamily: 'Poppins')),
                              ),
                              // SizedBox(
                              //   width: 30,
                              //   height: 50,
                              //   child: Text('F',
                              //       style: TextStyle(
                              //           fontSize: 40, fontFamily: 'Poppins')),
                              // ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 150,
                  height: 75,
                  child: Card(
                    color: Color.fromRGBO(252, 202, 12, 1),
                    child: new InkWell(
                      onLongPress: () {
                        for (var i = 6; i < 7; i++) playSound(letterList[i]);
                      },
                      onTap: () {
                        for (var i = 6; i < 7; i++) writeField(i);
                        for (var i = 6; i < 7; i++) playSound(letterList[i]);
                      },
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              SizedBox(
                                width: 30,
                                height: 55,
                                child: Text('g',
                                    style: TextStyle(
                                        fontSize: 40, fontFamily: 'Poppins')),
                              ),
                              // SizedBox(
                              //   width: 30,
                              //   height: 50,
                              //   child: Text('G',
                              //       style: TextStyle(
                              //           fontSize: 40, fontFamily: 'Poppins')),
                              // ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 150,
                  height: 75,
                  child: Card(
                    color: Color.fromRGBO(252, 202, 12, 1),
                    child: new InkWell(
                      onLongPress: () {
                        for (var i = 7; i < 8; i++) playSound(letterList[i]);
                      },
                      onTap: () {
                        for (var i = 7; i < 8; i++) writeField(i);
                        for (var i = 7; i < 8; i++) playSound(letterList[i]);
                      },
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              SizedBox(
                                width: 30,
                                height: 50,
                                child: Text('h',
                                    style: TextStyle(
                                        fontSize: 40, fontFamily: 'Poppins')),
                              ),
                              // SizedBox(
                              //   width: 30,
                              //   height: 50,
                              //   child: Text('H',
                              //       style: TextStyle(
                              //           fontSize: 40, fontFamily: 'Poppins')),
                              // ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              // Ligne 3
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox(
                  width: 150,
                  height: 75,
                  child: Card(
                    color: Color.fromRGBO(252, 202, 12, 1),
                    child: new InkWell(
                      onLongPress: () {
                        for (var i = 8; i < 9; i++) playSound(letterList[i]);
                      },
                      onTap: () {
                        for (var i = 8; i < 9; i++) writeField(i);
                        for (var i = 8; i < 9; i++) playSound(letterList[i]);
                      },
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              SizedBox(
                                width: 30,
                                height: 50,
                                child: Text('i',
                                    style: TextStyle(
                                        fontSize: 40, fontFamily: 'Poppins')),
                              ),
                              // SizedBox(
                              //   width: 30,
                              //   height: 50,
                              //   child: Text('I',
                              //       style: TextStyle(
                              //           fontSize: 40, fontFamily: 'Poppins')),
                              // ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 150,
                  height: 75,
                  child: Card(
                    color: Color.fromRGBO(252, 202, 12, 1),
                    child: new InkWell(
                      onLongPress: () {
                        for (var i = 9; i < 10; i++) playSound(letterList[i]);
                      },
                      onTap: () {
                        for (var i = 9; i < 10; i++) writeField(i);
                        for (var i = 9; i < 10; i++) playSound(letterList[i]);
                      },
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              SizedBox(
                                width: 30,
                                height: 65,
                                child: Text('j',
                                    style: TextStyle(
                                        fontSize: 40, fontFamily: 'Poppins')),
                              ),
                              // SizedBox(
                              //   width: 30,
                              //   height: 50,
                              //   child: Text('J',
                              //       style: TextStyle(
                              //           fontSize: 40, fontFamily: 'Poppins')),
                              // ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 150,
                  height: 75,
                  child: Card(
                    color: Color.fromRGBO(252, 202, 12, 1),
                    child: new InkWell(
                      onLongPress: () {
                        for (var i = 10; i < 11; i++) playSound(letterList[i]);
                      },
                      onTap: () {
                        for (var i = 10; i < 11; i++) writeField(i);
                        for (var i = 10; i < 11; i++) playSound(letterList[i]);
                      },
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              SizedBox(
                                width: 30,
                                height: 50,
                                child: Text('k',
                                    style: TextStyle(
                                        fontSize: 40, fontFamily: 'Poppins')),
                              ),
                              // SizedBox(
                              //   width: 30,
                              //   height: 50,
                              //   child: Text('K',
                              //       style: TextStyle(
                              //           fontSize: 40, fontFamily: 'Poppins')),
                              // ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 150,
                  height: 75,
                  child: Card(
                    color: Color.fromRGBO(252, 202, 12, 1),
                    child: new InkWell(
                      onLongPress: () {
                        for (var i = 11; i < 12; i++) playSound(letterList[i]);
                      },
                      onTap: () {
                        for (var i = 11; i < 12; i++) writeField(i);
                        for (var i = 11; i < 12; i++) playSound(letterList[i]);
                      },
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              SizedBox(
                                width: 30,
                                height: 50,
                                child: Text('l',
                                    style: TextStyle(
                                        fontSize: 40, fontFamily: 'Poppins')),
                              ),
                              // SizedBox(
                              //   width: 30,
                              //   height: 50,
                              //   child: Text('L',
                              //       style: TextStyle(
                              //           fontSize: 40, fontFamily: 'Poppins')),
                              // ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              // Ligne 5
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox(
                  width: 150,
                  height: 75,
                  child: Card(
                    color: Color.fromRGBO(252, 202, 12, 1),
                    child: new InkWell(
                      onLongPress: () {
                        for (var i = 12; i < 13; i++) playSound(letterList[i]);
                      },
                      onTap: () {
                        for (var i = 12; i < 13; i++) writeField(i);
                        for (var i = 12; i < 13; i++) playSound(letterList[i]);
                      },
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              SizedBox(
                                width: 40,
                                height: 50,
                                child: Text('m',
                                    style: TextStyle(
                                        fontSize: 40, fontFamily: 'Poppins')),
                              ),
                              // SizedBox(
                              //   width: 35,
                              //   height: 50,
                              //   child: Text('M',
                              //       style: TextStyle(
                              //           fontSize: 40, fontFamily: 'Poppins')),
                              // ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 150,
                  height: 75,
                  child: Card(
                    color: Color.fromRGBO(252, 202, 12, 1),
                    child: new InkWell(
                      onLongPress: () {
                        for (var i = 13; i < 14; i++) playSound(letterList[i]);
                      },
                      onTap: () {
                        for (var i = 13; i < 14; i++) writeField(i);
                        for (var i = 13; i < 14; i++) playSound(letterList[i]);
                      },
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              SizedBox(
                                width: 30,
                                height: 50,
                                child: Text('n',
                                    style: TextStyle(
                                        fontSize: 40, fontFamily: 'Poppins')),
                              ),
                              // SizedBox(
                              //   width: 30,
                              //   height: 50,
                              //   child: Text('N',
                              //       style: TextStyle(
                              //           fontSize: 40, fontFamily: 'Poppins')),
                              // ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 150,
                  height: 75,
                  child: Card(
                    color: Color.fromRGBO(252, 202, 12, 1),
                    child: new InkWell(
                      onLongPress: () {
                        for (var i = 14; i < 15; i++) playSound(letterList[i]);
                      },
                      onTap: () {
                        for (var i = 14; i < 15; i++) writeField(i);
                        for (var i = 14; i < 15; i++) playSound(letterList[i]);
                      },
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              SizedBox(
                                width: 30,
                                height: 50,
                                child: Text('o',
                                    style: TextStyle(
                                        fontSize: 40, fontFamily: 'Poppins')),
                              ),
                              // SizedBox(
                              //   width: 30,
                              //   height: 50,
                              //   child: Text('O',
                              //       style: TextStyle(
                              //           fontSize: 40, fontFamily: 'Poppins')),
                              // ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 150,
                  height: 75,
                  child: Card(
                    color: Color.fromRGBO(252, 202, 12, 1),
                    child: new InkWell(
                      onLongPress: () {
                        for (var i = 15; i < 16; i++) playSound(letterList[i]);
                      },
                      onTap: () {
                        for (var i = 15; i < 16; i++) writeField(i);
                        for (var i = 15; i < 16; i++) playSound(letterList[i]);
                      },
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              SizedBox(
                                width: 30,
                                height: 50,
                                child: Text('p',
                                    style: TextStyle(
                                        fontSize: 40, fontFamily: 'Poppins')),
                              ),
                              // SizedBox(
                              //   width: 30,
                              //   height: 50,
                              //   child: Text('P',
                              //       style: TextStyle(
                              //           fontSize: 40, fontFamily: 'Poppins')),
                              // ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              // Ligne 5
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox(
                  width: 150,
                  height: 75,
                  child: Card(
                    color: Color.fromRGBO(252, 202, 12, 1),
                    child: new InkWell(
                      onLongPress: () {
                        for (var i = 16; i < 17; i++) playSound(letterList[i]);
                      },
                      onTap: () {
                        for (var i = 16; i < 17; i++) writeField(i);
                        for (var i = 16; i < 17; i++) playSound(letterList[i]);
                      },
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              SizedBox(
                                width: 30,
                                height: 50,
                                child: Text('q',
                                    style: TextStyle(
                                        fontSize: 40, fontFamily: 'Poppins')),
                              ),
                              // SizedBox(
                              //   width: 30,
                              //   height: 50,
                              //   child: Text('Q',
                              //       style: TextStyle(
                              //           fontSize: 40, fontFamily: 'Poppins')),
                              // ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 150,
                  height: 75,
                  child: Card(
                    color: Color.fromRGBO(252, 202, 12, 1),
                    child: new InkWell(
                      onLongPress: () {
                        for (var i = 17; i < 18; i++) playSound(letterList[i]);
                      },
                      onTap: () {
                        for (var i = 17; i < 18; i++) writeField(i);
                        for (var i = 17; i < 18; i++) playSound(letterList[i]);
                      },
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              SizedBox(
                                width: 30,
                                height: 50,
                                child: Text('r',
                                    style: TextStyle(
                                        fontSize: 40, fontFamily: 'Poppins')),
                              ),
                              // SizedBox(
                              //   width: 30,
                              //   height: 50,
                              //   child: Text('R',
                              //       style: TextStyle(
                              //           fontSize: 40, fontFamily: 'Poppins')),
                              // ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 150,
                  height: 75,
                  child: Card(
                    color: Color.fromRGBO(252, 202, 12, 1),
                    child: new InkWell(
                      onLongPress: () {
                        for (var i = 18; i < 19; i++) playSound(letterList[i]);
                      },
                      onTap: () {
                        for (var i = 18; i < 19; i++) writeField(i);
                        for (var i = 18; i < 19; i++) playSound(letterList[i]);
                      },
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              SizedBox(
                                width: 30,
                                height: 50,
                                child: Text('s',
                                    style: TextStyle(
                                        fontSize: 40, fontFamily: 'Poppins')),
                              ),
                              // SizedBox(
                              //   width: 30,
                              //   height: 50,
                              //   child: Text('S',
                              //       style: TextStyle(
                              //           fontSize: 40, fontFamily: 'Poppins')),
                              // ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 150,
                  height: 75,
                  child: Card(
                    color: Color.fromRGBO(252, 202, 12, 1),
                    child: new InkWell(
                      onLongPress: () {
                        for (var i = 19; i < 20; i++) playSound(letterList[i]);
                      },
                      onTap: () {
                        for (var i = 19; i < 20; i++) writeField(i);
                        for (var i = 19; i < 20; i++) playSound(letterList[i]);
                      },
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              SizedBox(
                                width: 30,
                                height: 50,
                                child: Text('t',
                                    style: TextStyle(
                                        fontSize: 40, fontFamily: 'Poppins')),
                              ),
                              // SizedBox(
                              //   width: 30,
                              //   height: 50,
                              //   child: Text('T',
                              //       style: TextStyle(
                              //           fontSize: 40, fontFamily: 'Poppins')),
                              // ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              // Ligne 7
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox(
                  width: 150,
                  height: 75,
                  child: Card(
                    color: Color.fromRGBO(252, 202, 12, 1),
                    child: new InkWell(
                      onLongPress: () {
                        for (var i = 20; i < 21; i++) playSound(letterList[i]);
                      },
                      onTap: () {
                        for (var i = 20; i < 21; i++) writeField(i);
                        for (var i = 20; i < 21; i++) playSound(letterList[i]);
                      },
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              SizedBox(
                                width: 30,
                                height: 50,
                                child: Text('u',
                                    style: TextStyle(
                                        fontSize: 40, fontFamily: 'Poppins')),
                              ),
                              // SizedBox(
                              //   width: 30,
                              //   height: 50,
                              //   child: Text('U',
                              //       style: TextStyle(
                              //           fontSize: 40, fontFamily: 'Poppins')),
                              // ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 150,
                  height: 75,
                  child: Card(
                    color: Color.fromRGBO(252, 202, 12, 1),
                    child: new InkWell(
                      onLongPress: () {
                        for (var i = 21; i < 22; i++) playSound(letterList[i]);
                      },
                      onTap: () {
                        for (var i = 21; i < 22; i++) writeField(i);
                        for (var i = 21; i < 22; i++) playSound(letterList[i]);
                      },
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              SizedBox(
                                width: 30,
                                height: 50,
                                child: Text('v',
                                    style: TextStyle(
                                        fontSize: 40, fontFamily: 'Poppins')),
                              ),
                              // SizedBox(
                              //   width: 30,
                              //   height: 50,
                              //   child: Text('V',
                              //       style: TextStyle(
                              //           fontSize: 40, fontFamily: 'Poppins')),
                              // ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 150,
                  height: 75,
                  child: Card(
                    color: Color.fromRGBO(252, 202, 12, 1),
                    child: new InkWell(
                      onLongPress: () {
                        for (var i = 22; i < 23; i++) playSound(letterList[i]);
                      },
                      onTap: () {
                        for (var i = 22; i < 23; i++) writeField(i);
                        for (var i = 22; i < 23; i++) playSound(letterList[i]);
                      },
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              SizedBox(
                                width: 40,
                                height: 50,
                                child: Text('w',
                                    style: TextStyle(
                                        fontSize: 40, fontFamily: 'Poppins')),
                              ),
                              // SizedBox(
                              //   width: 40,
                              //   height: 50,
                              //   child: Text('W',
                              //       style: TextStyle(
                              //           fontSize: 40, fontFamily: 'Poppins')),
                              // ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 150,
                  height: 75,
                  child: Card(
                    color: Color.fromRGBO(252, 202, 12, 1),
                    child: new InkWell(
                      onLongPress: () {
                        for (var i = 23; i < 24; i++) playSound(letterList[i]);
                      },
                      onTap: () {
                        for (var i = 23; i < 24; i++) writeField(i);
                        for (var i = 23; i < 24; i++) playSound(letterList[i]);
                      },
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              SizedBox(
                                width: 30,
                                height: 50,
                                child: Text('x',
                                    style: TextStyle(
                                        fontSize: 40, fontFamily: 'Poppins')),
                              ),
                              // SizedBox(
                              //   width: 30,
                              //   height: 50,
                              //   child: Text('X',
                              //       style: TextStyle(
                              //           fontSize: 40, fontFamily: 'Poppins')),
                              // ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              // Ligne 8
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox(
                  width: 150,
                  height: 75,
                  child: Card(
                    color: Color.fromRGBO(252, 202, 12, 1),
                    child: new InkWell(
                      onLongPress: () {
                        for (var i = 24; i < 25; i++) playSound(letterList[i]);
                      },
                      onTap: () {
                        for (var i = 24; i < 25; i++) writeField(i);
                        for (var i = 24; i < 25; i++) playSound(letterList[i]);
                      },
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              SizedBox(
                                width: 30,
                                height: 50,
                                child: Text('y',
                                    style: TextStyle(
                                        fontSize: 40, fontFamily: 'Poppins')),
                              ),
                              // SizedBox(
                              //   width: 30,
                              //   height: 50,
                              //   child: Text('Y',
                              //       style: TextStyle(
                              //           fontSize: 40, fontFamily: 'Poppins')),
                              // ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 150,
                  height: 75,
                  child: Card(
                    color: Color.fromRGBO(252, 202, 12, 1),
                    child: new InkWell(
                      onLongPress: () {
                        for (var i = 25; i < 26; i++) playSound(letterList[i]);
                      },
                      onTap: () {
                        for (var i = 25; i < 26; i++) writeField(i);
                        for (var i = 25; i < 26; i++) playSound(letterList[i]);
                      },
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              SizedBox(
                                width: 30,
                                height: 50,
                                child: Text('z',
                                    style: TextStyle(
                                        fontSize: 40, fontFamily: 'Poppins')),
                              ),
                              // SizedBox(
                              //   width: 30,
                              //   height: 50,
                              //   child: Text('Z',
                              //       style: TextStyle(
                              //           fontSize: 40, fontFamily: 'Poppins')),
                              // ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 150,
                  height: 70,
                  child: Card(
                    color: Colors.amberAccent,
                    child: new InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/menu');
                      },
                      child: const Icon(Icons.arrow_back_ios),
                    ),
                  ),
                ),
                // ),
              ],
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
