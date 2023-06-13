import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:shared_preferences/shared_preferences.dart';

extension ColorExtension on String {
  toColor18() {
    var hexString = this;
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}

class Exercice4_num extends StatefulWidget {
  const Exercice4_num({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<Exercice4_num> createState() => _Exercice4_numState();
}

class _Exercice4_numState extends State<Exercice4_num> {
  final player = AudioPlayer();
  int _counter = 0;
  double point = 0;
  var debutEvaluation;
  String theAudioPath = '';
  String theQuestion = '';
  late SharedPreferences preferences;

//liste de type map avec nos questions, syllables et reponses
  List<Map<String, dynamic>> evaElements = [
    {'question': '1- Il est trois heures et demie', 'reponse': '3 h 30'},
    {'question': '2- Il est cinq heures moins vingt', 'reponse': '4 h 40'},
    {'question': '3- Il est dix heures et quart', 'reponse': '10 h 45'},
    {'question': '4- Il est six heures et demie', 'reponse': '6 h 30'},
    {'question': '5- Il est onze heures vingt-cinq', 'reponse': '11 h 25'},
    {'question': '6- Il est huit heures moins cinq', 'reponse': '7 h 55'},
    {'question': '7- Il est deux heures moins vingt', 'reponse': '1 h 40'},
    {'question': '8- Il est une heure moins le quart', 'reponse': '00 h 45'},
    {'question': '9- Il est quatre heures dix', 'reponse': '4 h 10'},
    {'question': '10- Il est dix heures et demie', 'reponse': '10 h 30'},
    {'question': '11- Il est neuf heures trente', 'reponse': '9 h 30'},
  ];

//Tableau des sysllables
  List<String> syllabes = [
    '7 h 55',
    '10 h 30',
    '4 h 40',
    '10 h 45',
    '6 h 30',
    '4 h 10',
    '00 h 45',
    '9 h 30',
    '11 h 25',
    '1 h 40',
    '3 h 30',
  ];

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    debutEvaluation = "false";
    _counter = 0;

    // theQuestion = questions[_counter];
    retrieveCounter();
  }

  Future retrieveCounter() async {
    preferences = await SharedPreferences.getInstance();
  }

  void playSound() {
    player.play(AssetSource(theAudioPath));
  }

  void RandomCounter() {
    setState(() {
      _counter++;
    });
  }

  void CheckChoice(int index) {
    if (_counter < 11) {
      // Vérification de la réponse
      if (_counter < syllabes.length && _counter < evaElements.length) {
        if (syllabes[index] == evaElements[_counter]["reponse"]) {
          setState(() {
            RandomCounter();
            point = point + 0.2;

            print(".....POINT: ${point.toStringAsFixed(1)}");
            if (_counter == 11) {
              Saveresult();
            }
          });
        } else {
          // Errorpopup(context);
          RandomCounter();
          if (_counter == 11) {
            Saveresult();
          }
        }
      } else {
        Saveresult();
        Navigator.pushReplacementNamed(context, '/menuEva');
      }
    }
  }

  Future Saveresult() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    //sauvegarde du resultat
    prefs.setDouble('numeratie4', point);
    prefs.setBool("num4", true);
    Successpopup();
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
              playSound();
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
  // void Errorpopup(BuildContext context) {
  //   showDialog(
  //     barrierDismissible: false,
  //     context: context,
  //     builder: (ctx) => AlertDialog(
  //       title: Text(
  //         "Résultat",
  //         textAlign: TextAlign.center,
  //         style: TextStyle(
  //           fontSize: 25,
  //           color: Colors.red[400],
  //         ),
  //       ),
  //       content: Text(
  //         "Mauvaise réponse",
  //         textAlign: TextAlign.center,
  //       ),
  //       actions: <Widget>[
  //         TextButton(
  //           onPressed: () {
  //             Navigator.of(ctx).pop();
  //           },
  //           child: Text(
  //             "Continuer",
  //             style: TextStyle(fontSize: 25),
  //           ),
  //         )
  //       ],
  //     ),
  //   );
  // }

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
              Navigator.pushNamedAndRemoveUntil(
                  context, '/menuEva', ModalRoute.withName('/menu'));
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
            //Navigator.pushReplacementNamed(context, '/menuevaluation');
          },
        ),
        title: Text(
          widget.title + 'Evaluation: Exercice 3',
          style:
              TextStyle(color: Color(0xff000000), fontStyle: FontStyle.italic),
        ),
      ),
      body: SingleChildScrollView(
          child: (_counter < evaElements.length)
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SizedBox(height: 20),
                    Text(
                      "Convertis les mesures de capacités et de masse suivantes :",
                      style: TextStyle(fontSize: 20),
                    ),

                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      //Menu buttons---------
                      children: <Widget>[
                        Padding(
                            padding: EdgeInsets.all(15),
                            child: Text(
                              "${evaElements[_counter]["question"]}",
                              style: TextStyle(fontSize: 35),
                            )),
                      ],
                    ),
                    SizedBox(height: 10),
                    //--- Menu -----------------------
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 100),
                      child: GridView.count(
                        shrinkWrap: true,
                        crossAxisCount: 5,
                        childAspectRatio: 2.5,
                        children: List.generate(
                          syllabes.length,
                          (index) => Card(
                            child: new InkWell(
                              onTap: () {
                                CheckChoice(index);
                              },
                              child: Center(
                                  child: Text(
                                syllabes[index],
                                style: TextStyle(
                                  fontSize: 30,
                                  fontFamily: 'Poppins',
                                ),
                              )),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              : null),
      floatingActionButton: Container(
        height: 80.0,
        width: 80.0,
        child: FloatingActionButton(
            backgroundColor: Colors.amber,
            child: Text(
              '${point.toStringAsFixed(1)}/2.2',
              style: TextStyle(fontSize: 20),
            ),
            onPressed: () => null),
      ),
    );
  }
}
