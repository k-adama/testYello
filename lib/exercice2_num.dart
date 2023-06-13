import 'dart:async';
import 'package:flutter/material.dart';
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

class Exercice2_num extends StatefulWidget {
  const Exercice2_num({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<Exercice2_num> createState() => _Exercice2_numState();
}

class _Exercice2_numState extends State<Exercice2_num> {
  int _counter = 0;
  double point = 0;
  var debutEvaluation;

  late SharedPreferences preferences;
  final _controller = TextEditingController();

//liste de type map avec nos questions, syllables et reponses
  List<Map<String, dynamic>> evaElements = [
    {'question': '1 450 X 51 =',
     'reponse': '73950'},
    {'question': '58 000 + 4 850 = ', 'reponse': '62850'},
    {'question': '65870 – 8820 = ', 'reponse': '357050'},
    {'question': '89000 ÷ 200 = ', 'reponse': '245'},
  ];

//Tableau des sysllables
  List<String> syllabes = [
    'fou',
    'tou',
    'cu',
    'bou',
    'sou',
    'dou',
    'coi',
    'co',
    'ca',
    'cou',
  ];

  @override
  void dispose() {
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

  void RandomCounter() {
    setState(() {
      _counter++;
    });
  }

  void CheckChoice(String res) {
    if (_counter < 4) {
      // Vérification de la réponse
      if (_counter < evaElements.length) {
        if (res == evaElements[_counter]["reponse"]) {
          setState(() {
            RandomCounter();
            point = point + 0.2;

            print(".....POINT: ${point.toStringAsFixed(1)}");
            if (_counter == 4) {
              Saveresult();
            }
          });
        } else {
          // Errorpopup(context);
          RandomCounter();
          if (_counter == 4) {
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
    prefs.setDouble('numeratie2', point);
     prefs.setBool("num2", true);
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
          },
        ),
        title: Text(
          widget.title + 'Evaluation: Exercice 2 Numératie',
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
                      "A l’aide de votre calculatrice, trouvez les résultats des opérations suivantes:",
                      style: TextStyle(fontSize: 20),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      //Menu buttons---------
                      children: <Widget>[
                        Padding(
                            padding: EdgeInsets.all(15),
                            child: Text(
                              "${evaElements[_counter]["question"]}",
                              style: TextStyle(fontSize: 35, color: Colors.red),
                            )),
                      ],
                    ),
                    SizedBox(height: 10),

                    Form(
                        child: Column(
                      children: [
                        Container(
                            width: MediaQuery.of(context).size.width / 3,
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              controller: _controller,
                              decoration: InputDecoration(
                                labelText: "Ecrivez la réponse",
                                border: OutlineInputBorder(),
                              ),
                            )),
                        ElevatedButton(
                            onPressed: () {
                              CheckChoice(_controller.text);

                              _controller.clear();
                            },
                            child: Text("SOUMETTRE"))
                      ],
                    ))
                    //--- Menu -----------------------
                  ],
                )
              : null),
      floatingActionButton: Container(
        height: 80.0,
        width: 80.0,
        child: FloatingActionButton(
            backgroundColor: Colors.amber,
            child: Text(
              '${point.toStringAsFixed(1)}/0.8',
              style: TextStyle(fontSize: 20),
            ),
            onPressed: () => null),
      ),
    );
  }
}
