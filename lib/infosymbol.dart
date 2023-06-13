import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'evaluationSymbol.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/services.dart';
import 'menu.dart';

extension ColorExtension on String {
  toColor2() {
    var hexString = this;
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}

class InfoSymbol extends StatefulWidget {
  const InfoSymbol({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<InfoSymbol> createState() => _InfoSymbolState();
}

class _InfoSymbolState extends State<InfoSymbol> {
  int _counter = 0;
  final player = AudioPlayer();
  String Phrase = '';
  String theAudioPath = '';
  String imgSymbolPath = '';
  String ImgIllustrationPath = '';

  List<String> SymbolName = [];
  List<String> AudioName = [];
  List<String> ImagesSymbole = [];
  List<String> Imagesillustration = [];

  void Navigate(int index) {
    setState(() {
      _counter = index;
      Phrase = SymbolName[index];
      theAudioPath = AudioName[index];
      ImgIllustrationPath = Imagesillustration[index];
      imgSymbolPath = ImagesSymbole[index];
    });
    playSound();
    print(index);
  }

  void playSound() {
    player.play(AssetSource(theAudioPath));
  }

  void SetSymboleName() {
    SymbolName = [
      "l'égalité",
      "L'entente",
      "Le dialogue",
      "La protection",
      "L'union",
      "La tolérance",
      "La sincérité",
      "Conserver les biens",
      "L'amour Paternel",
      "L'amour maternel",
      "L'homme est le pilier de la famille",
      "La femme est le socle de la famille",
    ];
  }

  void SetAudioPath() {
    AudioName = [
      'audio/prealpha/egalite.mp3',
      'audio/prealpha/entente.mp3',
      'audio/prealpha/dialogue.mp3',
      'audio/prealpha/protection.mp3',
      'audio/prealpha/union.mp3',
      'audio/prealpha/tolerence.mp3',
      'audio/prealpha/sincerite.mp3',
      'audio/prealpha/conservebien.mp3',
      'audio/prealpha/amourpa.mp3',
      'audio/prealpha/amourma.mp3',
      'audio/prealpha/hompilier.mp3',
      'audio/prealpha/femsocle.mp3',
    ];
  }

  void SetSymboleImg() {
    ImagesSymbole = [
      'assets/prealpha/point.png',
      'assets/prealpha/arcd.png',
      'assets/prealpha/arcb.png',
      'assets/prealpha/arcg.png',
      'assets/prealpha/cercle.png',
      'assets/prealpha/barh.png',
      'assets/prealpha/barv.png',
      'assets/prealpha/arch.png',
      'assets/prealpha/oblicg.png',
      'assets/prealpha/oblicd.png',
      'assets/prealpha/j2.png',
      'assets/prealpha/j.png',
    ];
  }

  void SetIllustrationImg() {
    Imagesillustration = [
      'assets/prealpha/depense.png',
      'assets/prealpha/vente.png',
      'assets/prealpha/recette.png',
      'assets/prealpha/commerce.png',
      'assets/prealpha/epargne.png',
      'assets/prealpha/client.png',
      'assets/prealpha/agriculture.png',
      'assets/prealpha/recolte.png',
      'assets/prealpha/engrais.png',
      'assets/prealpha/calcule.png',
      'assets/prealpha/depense.png',
      'assets/prealpha/depense.png',
    ];
  }

  @override
  void initState() {
    SetSymboleImg();
    SetAudioPath();
    SetSymboleName();
    SetIllustrationImg();

    Phrase = SymbolName[0];
    theAudioPath = AudioName[0];
    ImgIllustrationPath = Imagesillustration[0];
    imgSymbolPath = ImagesSymbole[0];
    player.play(AssetSource(theAudioPath));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: '#fcca0c'.toColor2(),
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 50,
        backgroundColor: '#fcca0c'.toColor2(),
        title: Text(
          widget.title + 'La pré-alphabétisation',
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
              padding: EdgeInsets.all(6), //apply padding to all four sides
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox(
                  width: 300,
                  height: 50,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox(
                  width: 90,
                  height: 50,
                  child: Card(
                    child: new InkWell(
                      onTap: () {
                        if (_counter > 0) {
                          int index;
                          index = _counter - 1;
                          Navigate(index);
                        }
                        //print("tapped");
                      },
                      child: const Icon(Icons.arrow_back),
                    ),
                  ),
                ),
                // Expanded(
                SizedBox(
                  width: 90,
                  height: 90,
                  child: Image(
                    //image:AssetImage('assets/prealpha/arcb.png'),
                    image: AssetImage(imgSymbolPath),

                    width: 90,
                    height: 90,
                  ),
                ),
                // ),
                // Expanded(
                // SizedBox(
                //   width: 150,
                //   height: 150,
                //   child: Image(
                //     //image:AssetImage('assets/icons/teacher.png'),
                //     image: AssetImage(ImgIllustrationPath),
                //     width: 70,
                //     height: 70,
                //   ),
                // ),

                SizedBox(
                  width: 90,
                  height: 50,
                  child: Card(
                    child: new InkWell(
                      onTap: () {
                        if (_counter < ImagesSymbole.length - 1) {
                          int index;
                          index = _counter + 1;
                          Navigate(index);
                        }
                      },
                      child: const Icon(Icons.arrow_forward),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 450,
              height: 50,
              child: Text(
                Phrase,
                style: TextStyle(fontSize: 25),
                textAlign: TextAlign.center,
              ),
            ),
            // SizedBox(
            //   width: 100,
            //   height: 100,
            //   child: Card(
            //     child: new InkWell(
            //       onTap: () {
            //         //print("tapped");
            //         Navigator.pushReplacementNamed(context, '/menu');
            //       },
            //       child: const Icon(
            //         Icons.home_outlined,
            //         size: 50,
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
      floatingActionButton: Container(
        height: 80.0,
        width: 80.0,
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
