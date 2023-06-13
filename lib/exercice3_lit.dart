import 'dart:ffi';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:audioplayers/audioplayers.dart';
import 'register.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'menu.dart';
import 'main.dart';
import 'menuEvaluation.dart';

extension ColorExtension on String {
  toColor18() {
    var hexString = this;
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}

class Exercice3_lit extends StatefulWidget {
  const Exercice3_lit({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<Exercice3_lit> createState() => _Exercice3_litState();
}

class _Exercice3_litState extends State<Exercice3_lit> {
  final player = AudioPlayer();
  int _counter = 0;
  double point = 0;
  double total = 0.0;
  var debutEvaluation;
  String theAudioPath = '';
  String theQuestion = '';
  String erreur = '';
  String erreur2 = '';
  final pass = TextEditingController();
  final note = TextEditingController();
  final reponse_a = TextEditingController();
  final reponse_b = TextEditingController();
  final reponse_c = TextEditingController();
  final reponse_d = TextEditingController();
  final reponse_e = TextEditingController();
  bool terminated = false;
  late SharedPreferences prefs;

  Widget Questionnaire(String question, TextEditingController reponse) {
    return Container(
      width: 500,
      child: Column(
        children: [
          Text(
            "${question}",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Container(
            width: 400,
            height: 100,
            color: terminated ? Colors.grey : Colors.white,
            child: TextField(
              controller: reponse,
              readOnly: terminated ? true : false,
              maxLines: 3,
              style: TextStyle(
                fontSize: 18,
                height: 1.5,
              ),
              keyboardType: TextInputType.multiline,
              obscureText: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'entrez votre réponse ici',
              ),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    debutEvaluation = "false";
    init();
  }

  void Terminer() {
    if (_counter < 5) {
      setState(() {
        terminated = true;
      });

      if (terminated) {
        Successpopup();
      }
      // playSound();
    } else {
      Saveresult();

      Navigator.pushReplacementNamed(context, '/menuEva');
    }
  }

  void Connexion() {
    showDialog(
      context: context,
      builder: (ctx) => SingleChildScrollView(
        child: AlertDialog(
          title: Text(
            "Entrer votre mot de passe",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25,
              color: Colors.green[400],
            ),
          ),
          content: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  width: 200,
                  height: 60,
                  child: TextField(
                    controller: pass,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Mot de passe',
                    ),
                  ),
                ),
                Text(
                  "${erreur}",
                  style: TextStyle(color: Colors.red),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (pass.text == 'YelloAlpha') {
                      Navigator.of(ctx).pop();
                      setState(() {
                        erreur = '';
                      });
                      Noter();
                    } else {
                      setState(() {
                        erreur = 'mot de passe incorrect';
                        Navigator.of(ctx).pop();
                        Connexion();
                      });
                    }
                  },
                  child: Text(
                    "connexion",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void Noter() {
    showDialog(
      context: context,
      builder: (ctx) => SingleChildScrollView(
        child: AlertDialog(
          title: Text(
            "Entrer la note",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25,
              color: Colors.green[400],
            ),
          ),
          content: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 60,
                      width: 100,
                      child: TextFormField(
                        controller: note,
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        obscureText: false,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 25,
                          fontFamily: 'Poppins',
                        ),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'note',
                        ),
                      ),
                    ),
                    Text(
                      ' / 3',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 25,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ],
                ),
                Text(
                  '$erreur2',
                  style: TextStyle(
                    color: Colors.red,
                    fontFamily: 'Poppins',
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    point = double.parse(note.text);
                    if (point < 0 || point > 3) {
                      setState(() {
                        erreur2 = 'la note doit inclure entre (0 et 3)';
                        Navigator.of(ctx).pop();
                        Noter();
                      });
                    } else {
                      total += point;
                      print(total);
                      setState(() {
                        erreur2 = '';
                      });
                      Saveresult();
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/menuEva', ModalRoute.withName('/menu'));
                    }
                  },
                  child: Text(
                    "Validé",
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> init() async {
    prefs = await SharedPreferences.getInstance();
    setState(() {
      total = prefs.getDouble('litteratie') as double;
    });
  }

  Future Saveresult() async {
    prefs.setDouble('litteratie3', total as double);
    prefs.setBool("lit3", true);

    print(".....RESULTAT: ${prefs.getDouble('litteratie')} .....");
    //Successpopup();
  }

  //popup anonçant le début de l'évaluation
  void Startpopup(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(
          "Evaluation",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 25,
            color: Colors.red[400],
          ),
        ),
        content: Text(
          "Vous êtes sur le point de commencer votre évaluation",
          textAlign: TextAlign.center,
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              setState(() {
                debutEvaluation = "true";
              });

              Navigator.of(ctx).pop();
            },
            child: Text(
              "COMMENCER",
              style: TextStyle(fontSize: 25),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/menuEva', ModalRoute.withName('/menu'));
            },
            child: Text(
              "Annuler",
              style: TextStyle(fontSize: 25),
            ),
          )
        ],
      ),
    );
  }

  //popup interdissant de faire un retour
  void Alertpopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(
          "Notification",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 25,
            color: Colors.red[400],
          ),
        ),
        content: Text(
          "Vous devez terminer l'evaluation avant de sortir",
          textAlign: TextAlign.center,
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(ctx).pop();
              //Navigator.pushReplacementNamed(context, '/menuEva');
            },
            child: Text(
              "OK",
              style: TextStyle(fontSize: 25),
            ),
          ),
        ],
      ),
    );
  }

  //popup de reponse erronée
  void Errorpopup(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(
          "Résultat",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 25,
            color: Colors.red[400],
          ),
        ),
        content: Text(
          "Mauvaise réponse",
          textAlign: TextAlign.center,
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(ctx).pop();
            },
            child: Text(
              "Continuer",
              style: TextStyle(fontSize: 25),
            ),
          )
        ],
      ),
    );
  }

  //popup de succès de l'évaluation
  void Successpopup() {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(
          "Félicitation",
          style: TextStyle(
            fontSize: 25,
            color: Colors.green[400],
          ),
        ),
        content: Text(
          "Vous avez terminer votre évaluation",
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              "Ok",
              style: TextStyle(fontSize: 25),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    //affichage de popup d'evaluation
    debutEvaluation != "true"
        ? Future.delayed(Duration.zero, () => Startpopup(context))
        : "";
    return Scaffold(
      //backgroundColor: '#fcca0c'.toColor2(),
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 50,
        backgroundColor: '#fcca0c'.toColor18(),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          tooltip: "Close",
          onPressed: () {
            Alertpopup(context);
            //Navigator.pushReplacementNamed(context, '/menuEva');
          },
        ),
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(
          widget.title + 'Evaluation: Exercice 3',
          style:
              TextStyle(color: Color(0xff000000), fontStyle: FontStyle.italic),
        ),
      ),
      body: SingleChildScrollView(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          children: [
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(width: 200),
                Text(
                  "Etude de texte, analyse et compréhension du texte",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              width: 700,
              child: Text(
                " Les commerçantes ont une activité journalière. Toutes les dépenses et les entrées d‘argent ne sont pas planifiées à l‘ avance car ne sachant ni lire, ni écrire et ni calculer. MTN a sollicité l’ONG Ga-Tic pour un projet d’alphabétisation fonctionnelle par le numérique afin qu’elles fassent individuellement leur comptabilité, qu’elles lisent les factures et qu’elles soient autonomes financièrement. Ce projet qui durera 3 mois est très apprécié des bénéficiaires qui sont très assidues tous les mercredis de 13 heures à 15 heures dans leurs différents centres. L’utilisation du smartphone dans ce projet facilite l’accès aux TICs et le temps consacré à l’alphabétisation.",
                style: TextStyle(fontSize: 22, height: 1.5),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 50),
            Questionnaire('a -	Donnez un titre au texte.', reponse_a),
            Questionnaire('b - De quoi parle le text ?', reponse_b),
            Questionnaire('c - Quelle est la durée du projet ?', reponse_c),
            Questionnaire(
                'd - Mettez la dernière phrase du text au futur simple et au passé composer de l\'indicatif.',
                reponse_d),
            Questionnaire(
                'c - Expliquez en 10 lignes ce que vous retenez du projet.',
                reponse_e),
            terminated
                ? ElevatedButton(
                    onPressed: () {
                      Connexion();
                    },
                    child: Text("Noter"))
                : ElevatedButton(
                    onPressed: () {
                      Terminer();
                    },
                    child: Text("Terminer")),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
