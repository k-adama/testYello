import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:audioplayers/audioplayers.dart';
import 'menu.dart';
import 'ardoise.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'alphabet.dart';

extension ColorExtension on String {
  toColor20() {
    var hexString = this;
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}

class Ecrire extends StatefulWidget {
  const Ecrire({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<Ecrire> createState() => _EcrireState();
}

class _EcrireState extends State<Ecrire> {
  int _CounteLettrer = 0;
  final player = AudioPlayer();

  String letter = '';
  String theAudioPath = '';
  String ImgAnimation = '';

  var letterList = new List<String>.filled(23, '', growable: true);
  var AudioName = new List<String>.filled(23, '', growable: true);
  var Imagesillustration = new List<String>.filled(23, '', growable: true);

  void SetletterList() {
    letterList = [
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
  }

  void SetImagesillustration() {
    Imagesillustration = [
      'assets/ecriture/a.gif',
      'assets/ecriture/b.gif',
      'assets/ecriture/c.gif',
      'assets/ecriture/d.gif',
      'assets/ecriture/e.gif',
      'assets/ecriture/f.gif',
      'assets/ecriture/g.gif',
      'assets/ecriture/h.gif',
      'assets/ecriture/i.gif',
      'assets/ecriture/j.gif',
      'assets/ecriture/k.gif',
      'assets/ecriture/l.gif',
      'assets/ecriture/m.gif',
      'assets/ecriture/n.gif',
      'assets/ecriture/o.gif',
      'assets/ecriture/p.gif',
      'assets/ecriture/q.gif',
      'assets/ecriture/r.gif',
      'assets/ecriture/s.gif',
      'assets/ecriture/t.gif',
      'assets/ecriture/u.gif',
      'assets/ecriture/v.gif',
      'assets/ecriture/w.gif',
      'assets/ecriture/x.gif',
      'assets/ecriture/y.gif',
      'assets/ecriture/z.gif'
    ];
  }

  // void SetAudioName() {
  //   AudioName = [
  //     'assets/audio/alphabet/ecrirea.mp3',
  //     'assets/audio/alphabet/ecrireb.mp3',
  //     'assets/audio/alphabet/ecrirec.mp3',
  //     'assets/audio/alphabet/ecrired.mp3',
  //     'assets/audio/alphabet/ecriree.mp3',
  //     'assets/audio/alphabet/ecriref.mp3',
  //     'assets/audio/alphabet/ecrireg.mp3',
  //     'assets/audio/alphabet/ecrireh.mp3',
  //     'assets/audio/alphabet/ecrirei.mp3',
  //     'assets/audio/alphabet/ecrirej.mp3',
  //     'assets/audio/alphabet/ecrirek.mp3',
  //     'assets/audio/alphabet/ecrirel.mp3',
  //     'assets/audio/alphabet/ecrirem.mp3',
  //     'assets/audio/alphabet/ecrirel.mp3',
  //     'assets/audio/alphabet/ecrireo.mp3',
  //     'assets/audio/alphabet/ecrirep.mp3',
  //     'assets/audio/alphabet/ecrireq.mp3',
  //     'assets/audio/alphabet/ecrirer.mp3',
  //     'assets/audio/alphabet/ecrires.mp3',
  //     'assets/audio/alphabet/ecriret.mp3',
  //     'assets/audio/alphabet/ecrireu.mp3',
  //     'assets/audio/alphabet/ecrirev.mp3',
  //     'assets/audio/alphabet/ecrirew.mp3',
  //     'assets/audio/alphabet/ecrirex.mp3',
  //     'assets/audio/alphabet/ecrirey.mp3',
  //     'assets/audio/alphabet/ecrirez.mp3'
  //   ];
  // }

  void playSound(String thesound) {
    //player.play(AssetSource('audio/lecon1/$thesound.mp3'));
    player.play(AssetSource('audio/alphabet_lecture/lire$thesound.mp3'));
    print(thesound);
  }

  int _listCount = 0;
  int _listCounteLettre = 0;
  void _lettreAlphabetSuivant() {
    setState(() {
      //Générer les lettres de la liste
      _listCounteLettre < letterList.length - 1
          ? _listCounteLettre++
          : _listCounteLettre;
      //Scroller entre mes images gif
      _listCount < Imagesillustration.length - 1 ? _listCount++ : _listCount;
    });
  }

  void _lettreAlphabetRetour() {
    setState(() {
      _listCounteLettre > 0 ? _listCounteLettre-- : _listCounteLettre;
      //Scroller entre mes images gif
      _listCount > 0 ? _listCount-- : _listCount;
    });
  }

  void Navigate(int index) {
    setState(() {
      _listCount = index;
      letter = letterList[_listCount];
      theAudioPath = AudioName[_listCount];
      ImgAnimation = Imagesillustration[_listCount];
    });
    // playSound();
    print(index);
  }

  late SharedPreferences preferences;
  int index = 0;
  Future init() async {
    preferences = await SharedPreferences.getInstance();
    int selected = preferences.getInt('index')!;
    setState(() {
      index = selected;
      _listCount = selected;
      _listCounteLettre = selected;
      letter = letterList[index];
      theAudioPath = AudioName[index];
      ImgAnimation = Imagesillustration[index];
      player.play(AssetSource(theAudioPath));
    });
  }

  @override
  void initState() {
    super.initState();
    SetletterList();
    // SetAudioName();
    SetImagesillustration();
    init();
    // letter = letterList[0];
    // theAudioPath = AudioName[0];
    // ImgAnimation = Imagesillustration[0];
    // player.play(AssetSource(theAudioPath));
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
        backgroundColor: '#fcca0c'.toColor20(),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          tooltip: "Close",
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/alphabet');
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
                'La lettre ' + letterList[_listCounteLettre],
                style: TextStyle(fontSize: 35, fontFamily: 'Poppins'),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(4), //apply padding to all four sides
              child: Text(
                '',
                style: TextStyle(fontSize: 25),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                // Expanded(
                SizedBox(
                  width: 200,
                  height: 200,
                  child: Card(
                    child: new InkWell(
                      child: Image(
                        image: AssetImage(
                          Imagesillustration[_listCount],
                        ),
                        width: 10,
                        height: 10,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 300,
                  height: 200,
                  child: Column(
                    children: <Widget>[
                      Row(
                        // Ligne 8
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          SizedBox(
                            width: 150,
                            height: 70,
                            child: Card(
                              color: Colors.amberAccent,
                              child: new InkWell(
                                onTap: () {
                                  _lettreAlphabetRetour();
                                  playSound(letterList[_listCounteLettre]);
                                },
                                child: const Icon(
                                    Icons.arrow_back_ios_new_rounded),
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
                                  _lettreAlphabetSuivant();
                                  playSound(letterList[_listCounteLettre]);
                                  // Navigator.pushNamed(context, '/menu');
                                },
                                child:
                                    const Icon(Icons.arrow_forward_ios_rounded),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                // ),
                // Expanded(

                // ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 100.0,
        width: 100.0,
        child: FittedBox(
          child: FloatingActionButton(
              backgroundColor: Colors.amber,
              child: const Icon(
                Icons.border_color_outlined,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/ardoise');
              }),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
