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

class PreAlpha extends StatefulWidget {
  const PreAlpha({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<PreAlpha> createState() => _PreAlphaState();
}

class _PreAlphaState extends State<PreAlpha> {
  int _counter = 0;
  final player = AudioPlayer();
  String Phrase = '';
  String theAudioPath = '';
  String imgSymbolPath = '';
  String ImgIllustrationPath = '';

  var SymbolName = new List<String>.filled(23, '', growable: true);
  var AudioName = new List<String>.filled(23, '', growable: true);
  var ImagesSymbole = new List<String>.filled(23, '', growable: true);
  var Imagesillustration = new List<String>.filled(23, '', growable: true);

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
      'faire des dépenses',
      'faire des ventes',
      'faire des recettes',
      'faire du commerce',
      'faire des épargnes',
      'avoir des clients',
      'faire l\'agriculture',
      'faire une récolte',
      'utiliser de l\'engrais',
      'faire des calcules'
    ];
  }

  void SetAudioPath() {
    AudioName = [
      'audio/prealpha/fairedesdépenses.mp3',
      'audio/prealpha/fairedesventes.mp3',
      'audio/prealpha/fairedesrecettes.mp3',
      'audio/prealpha/faireducommerce.mp3',
      'audio/prealpha/fairedesépargnes.mp3',
      'audio/prealpha/avoirdesclients.mp3',
      'audio/prealpha/fairelagriculture.mp3',
      'audio/prealpha/faireunerécolte.mp3',
      'audio/prealpha/utiliserdelengrais.mp3',
      'audio/prealpha/fairedescalcules.mp3'
    ];
  }

  void SetSymboleImg() {
    ImagesSymbole = [
      'assets/prealpha/arcb.png',
      'assets/prealpha/arcd.png',
      'assets/prealpha/arcg.png',
      'assets/prealpha/arch.png',
      'assets/prealpha/barh.png',
      'assets/prealpha/barv.png',
      'assets/prealpha/cercle.png',
      'assets/prealpha/oblicd.png',
      'assets/prealpha/oblicg.png',
      'assets/prealpha/point.png'
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
      'assets/prealpha/calcule.png'
    ];
  }

  @override
  void initState() {
    super.initState();
    SetSymboleImg();
    SetAudioPath();
    SetSymboleName();
    SetIllustrationImg();

    Phrase = SymbolName[0];
    theAudioPath = AudioName[0];
    ImgIllustrationPath = Imagesillustration[0];
    imgSymbolPath = ImagesSymbole[0];
    player.play(AssetSource(theAudioPath));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: '#fcca0c'.toColor2(),
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 50,
        backgroundColor: '#fcca0c'.toColor6(),
        // leading: IconButton(
        //   icon: const Icon(
        //     Icons.arrow_back_ios,
        //     color: Colors.black,
        //   ),
        //   tooltip: "Close",
        //   onPressed: () {
        //     Navigator.pushNamed(context, '/menu');
        //   },
        // ),
        title: Text(
          widget.title + 'La pré-alpha',
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
            Row(
              children: [
                SizedBox(
                  width: 100,
                  height: 70,
                ),
                SizedBox(
                  width: 175,
                ),
                Text(
                  'Les symboles',
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'Poppins',
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 60, top: 12),
              child: Text(
                "Promouvoir une paix durable",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                  fontSize: 13,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 5, top: 25, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  // Expanded(
                  SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: (() {
                            player.play(
                                AssetSource('audio/prealpha/egalite.mp3'));
                          }),
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: 40,
                                height: 40,
                                child: Image(
                                  image:
                                      AssetImage('assets/prealpha/point.png'),
                                ),
                              ),
                              SizedBox(
                                width: 35,
                              ),
                              Container(
                                // phrase part 1 malène écrit des messages à boni.

                                child: Text(
                                  "L'egalité",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        InkWell(
                          onTap: (() {
                            player.play(
                                AssetSource('audio/prealpha/entente.mp3'));
                          }),
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: 40,
                                height: 40,
                                child: Image(
                                  image: AssetImage('assets/prealpha/arcd.png'),
                                ),
                              ),
                              SizedBox(
                                width: 35,
                              ),
                              Container(
                                // phrase part 1 malène écrit des messages à boni.

                                child: Text(
                                  "L'entente",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        InkWell(
                          onTap: (() {
                            player.play(
                                AssetSource('audio/prealpha/dialogue.mp3'));
                          }),
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: 40,
                                height: 40,
                                child: Image(
                                  image: AssetImage('assets/prealpha/arcg.png'),
                                ),
                              ),
                              SizedBox(
                                width: 35,
                              ),
                              Container(
                                // phrase part 1 malène écrit des messages à boni.

                                child: Text(
                                  "Le dialogue",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        InkWell(
                          onTap: (() {
                            player.play(
                                AssetSource('audio/prealpha/protection.mp3'));
                          }),
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: 40,
                                height: 40,
                                child: Image(
                                  image: AssetImage('assets/prealpha/arcb.png'),
                                ),
                              ),
                              SizedBox(
                                width: 35,
                              ),
                              Container(
                                // phrase part 1 malène écrit des messages à boni.

                                child: Text(
                                  "La protection",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        InkWell(
                          onTap: (() {
                            player
                                .play(AssetSource('audio/prealpha/union.mp3'));
                          }),
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: 40,
                                height: 40,
                                child: Image(
                                  image:
                                      AssetImage('assets/prealpha/cercle.png'),
                                ),
                              ),
                              SizedBox(
                                width: 35,
                              ),
                              Container(
                                // phrase part 1 malène écrit des messages à boni.

                                child: Text(
                                  "L'union",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        InkWell(
                          onTap: (() {
                            player.play(
                                AssetSource('audio/prealpha/tolerence.mp3'));
                          }),
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: 40,
                                height: 40,
                                child: Image(
                                  image: AssetImage('assets/prealpha/barh.png'),
                                ),
                              ),
                              SizedBox(
                                width: 35,
                              ),
                              Container(
                                // phrase part 1 malène écrit des messages à boni.

                                child: Text(
                                  "La tolerance",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        InkWell(
                          onTap: (() {
                            player.play(
                                AssetSource('audio/prealpha/sincerite.mp3'));
                          }),
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: 40,
                                height: 40,
                                child: Image(
                                  image: AssetImage('assets/prealpha/barv.png'),
                                ),
                              ),
                              SizedBox(
                                width: 35,
                              ),
                              Container(
                                // phrase part 1 malène écrit des messages à boni.

                                child: Text(
                                  "La sincerité",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        InkWell(
                          onTap: (() {
                            player.play(
                                AssetSource('audio/prealpha/conservebien.mp3'));
                          }),
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: 40,
                                height: 40,
                                child: Image(
                                  image: AssetImage('assets/prealpha/arch.png'),
                                ),
                              ),
                              SizedBox(
                                width: 35,
                              ),
                              Container(
                                child: Text(
                                  "conserver les biens",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        InkWell(
                          onTap: (() {
                            player.play(
                                AssetSource('audio/prealpha/amourpa.mp3'));
                          }),
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: 40,
                                height: 40,
                                child: Image(
                                  image:
                                      AssetImage('assets/prealpha/oblicg.png'),
                                ),
                              ),
                              SizedBox(
                                width: 35,
                              ),
                              Container(
                                child: Text(
                                  "L'amour paternel",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        InkWell(
                          onTap: (() {
                            player.play(
                                AssetSource('audio/prealpha/amourma.mp3'));
                          }),
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: 40,
                                height: 40,
                                child: Image(
                                  image:
                                      AssetImage('assets/prealpha/oblicd.png'),
                                ),
                              ),
                              SizedBox(
                                width: 35,
                              ),
                              Container(
                                child: Text(
                                  "L'amour maternel",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        InkWell(
                          onTap: (() {
                            player.play(
                                AssetSource('audio/prealpha/hompilier.mp3'));
                          }),
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: 40,
                                height: 40,
                                child: Image(
                                  image: AssetImage('assets/prealpha/j2.png'),
                                ),
                              ),
                              SizedBox(
                                width: 33,
                              ),
                              Container(
                                child: Text(
                                  "L'homme est le pilier de la famille",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        InkWell(
                          onTap: (() {
                            player.play(
                                AssetSource('audio/prealpha/femsocle.mp3'));
                          }),
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: 40,
                                height: 40,
                                child: Image.asset(
                                  'assets/prealpha/j.png', //just change your image to my image
                                  height: 150,
                                  //width: 100,
                                ),
                                // Image(
                                //   image: AssetImage('assets/prealpha/j.png'),
                                // ),
                              ),
                              SizedBox(
                                width: 33,
                              ),
                              Container(
                                child: Text(
                                  "La femme est le socle de la famille",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  // ),
                  // Expanded(
                ],
              ),
            ),
          ])),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
    // This trailing comma makes auto-formatting nicer for build methods.
  }

  Column tab() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              "assets/lecon/a.png",
              width: 150,
            ),
            Image.asset(
              "assets/lecon/b.png",
              width: 150,
            ),
            Image.asset(
              "assets/lecon/c.png",
              width: 150,
            ),
            Image.asset(
              "assets/lecon/d.png",
              width: 150,
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              "assets/lecon/e.png",
              width: 150,
            ),
            Image.asset(
              "assets/lecon/f.png",
              width: 150,
            ),
            Image.asset(
              "assets/lecon/g.png",
              width: 150,
            ),
            Image.asset(
              "assets/lecon/h.png",
              width: 150,
            ),
          ],
        ),
      ],
    );
  }

  Column tab1() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              "assets/lecon/i.png",
              width: 150,
            ),
            Image.asset(
              "assets/lecon/j.png",
              width: 150,
            ),
            Image.asset(
              "assets/lecon/k.png",
              width: 150,
            ),
            Image.asset(
              "assets/lecon/l.png",
              width: 150,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              "assets/lecon/m.png",
              width: 150,
            ),
            Image.asset(
              "assets/lecon/n.png",
              width: 150,
            ),
            Image.asset(
              "assets/lecon/o.png",
              width: 150,
            ),
            Image.asset(
              "assets/lecon/p.png",
              width: 150,
            ),
          ],
        ),
      ],
    );
  }

  Column tab2() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              "assets/lecon/q.png",
              width: 150,
            ),
            Image.asset(
              "assets/lecon/r.png",
              width: 150,
            ),
            Image.asset(
              "assets/lecon/s.png",
              width: 150,
            ),
            Image.asset(
              "assets/lecon/t.png",
              width: 150,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              "assets/lecon/u.png",
              width: 150,
            ),
            Image.asset(
              "assets/lecon/v.png",
              width: 150,
            ),
            Image.asset(
              "assets/lecon/w.png",
              width: 150,
            ),
            Image.asset(
              "assets/lecon/x.png",
              width: 150,
            ),
          ],
        ),
      ],
    );
  }

  Column tab3() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              "assets/lecon/y.png",
              width: 150,
            ),
            Image.asset(
              "assets/lecon/z.png",
              width: 150,
            ),
            Image.asset(
              "assets/lecon/chiffres.png",
              width: 300,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              "assets/lecon/a.png",
              width: 150,
            ),
            Image.asset(
              "assets/lecon/b.png",
              width: 150,
            ),
            Image.asset(
              "assets/lecon/c.png",
              width: 150,
            ),
            Image.asset(
              "assets/lecon/d.png",
              width: 150,
            )
          ],
        ),
      ],
    );
  }

  Column tab4() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              "assets/lecon/e.png",
              width: 150,
            ),
            Image.asset(
              "assets/lecon/f.png",
              width: 150,
            ),
            Image.asset(
              "assets/lecon/g.png",
              width: 150,
            ),
            Image.asset(
              "assets/lecon/h.png",
              width: 150,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              "assets/lecon/i.png",
              width: 150,
            ),
            Image.asset(
              "assets/lecon/j.png",
              width: 150,
            ),
            Image.asset(
              "assets/lecon/k.png",
              width: 150,
            ),
            Image.asset(
              "assets/lecon/l.png",
              width: 150,
            ),
          ],
        ),
      ],
    );
  }

  Column tab5() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              "assets/lecon/m.png",
              width: 150,
            ),
            Image.asset(
              "assets/lecon/n.png",
              width: 150,
            ),
            Image.asset(
              "assets/lecon/o.png",
              width: 150,
            ),
            Image.asset(
              "assets/lecon/p.png",
              width: 150,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              "assets/lecon/q.png",
              width: 150,
            ),
            Image.asset(
              "assets/lecon/r.png",
              width: 150,
            ),
            Image.asset(
              "assets/lecon/s.png",
              width: 150,
            ),
            Image.asset(
              "assets/lecon/t.png",
              width: 150,
            ),
          ],
        ),
      ],
    );
  }

  Column tab6() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              "assets/lecon/u.png",
              width: 150,
            ),
            Image.asset(
              "assets/lecon/v.png",
              width: 150,
            ),
            Image.asset(
              "assets/lecon/w.png",
              width: 150,
            ),
            Image.asset(
              "assets/lecon/x.png",
              width: 150,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              "assets/lecon/y.png",
              width: 150,
            ),
            Image.asset(
              "assets/lecon/z.png",
              width: 150,
            ),
            Image.asset(
              "assets/lecon/chiffres.png",
              width: 300,
            ),
          ],
        )
      ],
    );
  }
}

Container ImgLecon1({String? imageSource}) {
  return Container(
    width: double.infinity,
    margin: EdgeInsets.all(50),
    child: Image.asset(
      imageSource!,
    ),
  );
}
