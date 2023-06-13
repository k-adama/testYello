import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';


/**** ANCIEN MENU D'EVALUATION ****************
extension ColorExtension on String {
  toColor14() {
    var hexString = this;
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}

class MenuEvaluation extends StatefulWidget {
  const MenuEvaluation({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MenuEvaluation> createState() => _MenuEvaluationState();
}

class _MenuEvaluationState extends State<MenuEvaluation> {
  int _counter = 0;

  final pointLit = TextEditingController(text: '0');
  final pointNum = TextEditingController(text: '0');
  final pointSym = TextEditingController(text: '0');
  String thereponse = "";
  late SharedPreferences preferences;

  String theid = "";
  Future init() async {
    preferences = await SharedPreferences.getInstance();
    String? id = preferences.getString('id') ?? 'no data';
    // CheckConfig();
    GetStudentData(id);
  }

  void Clean() {
    pointLit.clear();
    pointNum.clear();
    pointSym.clear();
    // Navigator.pushReplacementNamed(context, '/dashboard');
  }
  //---- Enregistrer un elve ----0

  Future senddata() async {
    thereponse = "";
    final response =
        await http.post(Uri.parse("https://s-p4.com/yello/update.php"), body: {
      "identifiant": theid,
      "pointLit": pointLit.text,
      "pointNum": pointNum.text,
      "pointSym": pointSym.text,
    });
  }

  void GetStudentData(String id) {
    setState(() {
      theid = id;
    });
  }

  @override
  void initState() {
    super.initState();
    init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: '#fcca0c'.toColor2(),
      appBar: AppBar(
        centerTitle: true,
        // toolbarHeight: 80,
        backgroundColor: '#fcca0c'.toColor14(),
        title: Text(
          widget.title + 'Attribution de notes',
          style:
              TextStyle(color: Color(0xff000000), fontStyle: FontStyle.italic),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(4), //apply padding to all four sides
              child: Text(
                '',
                style: TextStyle(fontSize: 25),
              ),
            ),
// --- Ligne  1 -------------
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                //Expanded(

                //),
                Column(
                  children: [
                    Text(
                      'Littératie',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 25,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Row(children: [
                          SizedBox(
                            width: 100,
                            height: 60,
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              controller: pointLit,
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
                            ' / 10',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 25,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ]),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'Numératie',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 25,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Row(children: [
                          SizedBox(
                            width: 100,
                            height: 60,
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              controller: pointNum,
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
                            ' / 10',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 25,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ]),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'Symbole',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 25,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Row(children: [
                          SizedBox(
                            width: 100,
                            height: 60,
                            child: TextFormField(
                              textAlign: TextAlign.center,
                              controller: pointSym,
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
                            ' / 10',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 25,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ]),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            //------ Ligne 2 ------------------
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox(
                  width: 300,
                  height: 60,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: '#fcca0c'.toColor14(),
                    ),
                    onPressed: () {
                      // La saisie est valide
                      final n = int.parse(pointLit.text);
                      final m = int.parse(pointNum.text);
                      final s = int.parse(pointSym.text);

                      if (n > 10) {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              content: Text("La note ne doit pas dépasser 10"),
                              actions: [
                                TextButton(
                                  child: Text(
                                    "OK",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      } else if (m > 10) {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              content: Text("La note ne doit pas dépasser 10"),
                              actions: [
                                TextButton(
                                  child: Text(
                                    "OK",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      } else if (s > 10) {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              content: Text("La note ne doit pas dépasser 10"),
                              actions: [
                                TextButton(
                                  child: Text(
                                    "OK",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      } else {
                        senddata();
                        Clean();
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              content: Text("La note a bien été enregistrée !"),
                              actions: [
                                TextButton(
                                  child: Text(
                                    "OK",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                    Navigator.pushReplacementNamed(
                                        context, '/menu');
                                  },
                                ),
                              ],
                            );
                          },
                        );

                        // print(theid);
                      }

                      // senddata(pointLit.text,pointNum.text,pointSym.text);
                    },
                    child: Text(
                      'Enrégistrer',
                      style: TextStyle(
                          fontSize: 25,
                          color: CupertinoColors.darkBackgroundGray),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
*/

extension ColorExtension on String {
  toColor5() {
    var hexString = this;
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}

class MenuEvaluation extends StatefulWidget {
  const MenuEvaluation({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MenuEvaluation> createState() => _MenuEvaluationState();
}

class _MenuEvaluationState extends State<MenuEvaluation> {

  String erreurPass = "";
  final pass = TextEditingController();
  bool? numeratie1;
  bool? numeratie2;
  bool? numeratie3;
  bool? numeratie4;
  bool? litteratie1;
  bool? litteratie2;
  bool? litteratie3;

  Future<void> checkParcipation() async {
    var prefs = await SharedPreferences.getInstance();
    numeratie1 = prefs.getBool('num1');
    print(numeratie1);
    numeratie2 = prefs.getBool('num2');
    print(numeratie2);
    numeratie3 = prefs.getBool('num3');
    print(numeratie3);
    numeratie4 = prefs.getBool('num4');
    print(numeratie4);
    litteratie1 = prefs.getBool('lit1');
    print(litteratie1);
    litteratie2 = prefs.getBool('lit2');
    print(litteratie2);
    litteratie3 = prefs.getBool('lit3');
    print(litteratie3);

    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    checkParcipation();
  }

  @override
  void dispose() {
    checkParcipation();
    super.dispose();
  }

  void passage() {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(
          "Désolé",
          style: TextStyle(
            fontSize: 25,
            color: Colors.green[400],
          ),
        ),
        content: Text(
          "Vous avez déja fait cet exercice",
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
                  "${erreurPass}",
                  style: TextStyle(color: Colors.red),
                ),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        if (pass.text == 'YelloAlpha') {
                          Navigator.pushReplacementNamed(context, '/resultat');
                          setState(() {
                            erreurPass = '';
                            pass.clear();
                          });
                        } else {
                          setState(() {
                            erreurPass = 'mot de passe incorrect';
                            pass.clear();
                          });
                        }
                      },
                      child: Text(
                        "connexion",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Annuler",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final shouldPop = await showDialog<bool>(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text(
                  'Êtes-vous sûr de vouloir quitter le ménu d\'évaluation?'),
              actionsAlignment: MainAxisAlignment.spaceBetween,
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/menu', ModalRoute.withName('/'));
                  },
                  child: const Text('Oui'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(false);
                  },
                  child: const Text('Non'),
                ),
              ],
            );
          },
        );
        return shouldPop!;
      },
      child: Scaffold(
        //backgroundColor: '#fcca0c'.toColor2(),
        appBar: AppBar(
          centerTitle: true,
          toolbarHeight: 80,
          backgroundColor: '#fcca0c'.toColor5(),
          title: Text(
            widget.title + 'Menu des évaluations',
            style: TextStyle(
                color: Color(0xff000000), fontStyle: FontStyle.italic),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(20), //apply padding to all four sides
                child: Text(
                  'Litteratie',
                  style: TextStyle(fontSize: 25),
                ),
              ),
              // --- Ligne  1 -------------
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  // Expanded(
                  SizedBox(
                    width: 150,
                    height: 70,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          if (litteratie1 == true) {
                            return passage();
                          } else {
                            Navigator.pushNamed(context, '/exercice1_lit');
                          }
                        },
                        child: Center(child: Text('Exercice 1')),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 70,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          if (litteratie2 == true) {
                            return passage();
                          } else {
                            Navigator.pushNamed(context, '/exercice2_lit');
                          }
                        },
                        child: Center(child: Text('Exercice 2')),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 70,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          if (litteratie3 == true) {
                            return passage();
                          } else {
                            Navigator.pushNamed(context, '/exercice3_lit');
                          }
                        },
                        child: Center(child: Text('Exercice 3')),
                      ),
                    ),
                  ),
                  // ),

                  // ),
                ],
              ),
              // --- Ligne  2 -------------
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.all(20), //apply padding to all four sides
                child: Text(
                  'Numératie',
                  style: TextStyle(fontSize: 25),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  //Expanded(

                  //),

                  //Expanded(
                  SizedBox(
                    width: 150,
                    height: 70,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          if (numeratie1 == true) {
                            return passage();
                          } else {
                            Navigator.pushNamed(context, '/exercice1_num');
                          }

                          // print("tapped");
                        },
                        child: Center(child: Text('Exercice 1')),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 70,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          if (numeratie2 == true) {
                            return passage();
                          } else {
                            Navigator.pushNamed(context, '/exercice2_num');
                          }
                        },
                        child: Center(child: Text('Exercice 2')),
                      ),
                    ),
                  ),

                  SizedBox(
                    width: 150,
                    height: 70,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          if (numeratie3 == true) {
                            return passage();
                          } else {
                            Navigator.pushNamed(context, '/exercice3_num');
                          }
                        },
                        child: Center(child: Text('Exercice 3')),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 70,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          if (numeratie4 == true) {
                            return passage();
                          } else {
                            Navigator.pushNamed(context, '/exercice4_num');
                          }
                        },
                        child: Center(child: Text('Exercice 4')),
                      ),
                    ),
                  ),

                  //),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  // Expanded(
                  SizedBox(
                    width: 300,
                    height: 60,
                    child: TextButton(
                      style:
                          TextButton.styleFrom(backgroundColor: Colors.yellow),
                      onPressed: () async {
                        Connexion();
                        // senddata();
                        //CheckConfig();
                      },
                      child: Text(
                        'Voir les résulats',
                        style: TextStyle(
                            fontSize: 25,
                            color: CupertinoColors.darkBackgroundGray),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
        // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
