import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:shared_preferences/shared_preferences.dart';


extension ColorExtension on String {
  toColor3() {
    var hexString = this;
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}

class MenuApp extends StatefulWidget {
  const MenuApp({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MenuApp> createState() => _MenuAppState();
}

class _MenuAppState extends State<MenuApp> {

  late SharedPreferences preferences;
  String student = "";

  String erreurPass = "";
  final pass = TextEditingController();

  @override
  void initState() {
    super.initState();
    init();
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
                          Navigator.pushReplacementNamed(context, '/menuEva');
                          // Navigator.pushReplacementNamed(context, '/menuEva');
                          setState(() {
                            pass.clear();
                          });
                        } else {
                          setState(() {
                            erreurPass = "mot de passe incorrect";
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
                        pass.clear();
                        setState(() {
                          erreurPass = '';
                        });
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

  Future init() async {
    preferences = await SharedPreferences.getInstance();
    CheckConfig();
  }

  void CheckConfig() {
    //preferences.setString('nom', eleve.text);
    String? nom = preferences.getString('nom') ?? '';
    print(nom);
    if (nom == '') {
      // Navigator.pushReplacementNamed(context, '/menulecon');
      Navigator.pushReplacementNamed(context, '/adminlogin');
    } else {
      setState(() {
        student = nom;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        bool result = await Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => MenuApp(
                      title: '',
                    )));
        return result;
      },
      child: Scaffold(
        //backgroundColor: '#fcca0c'.toColor2(),
        appBar: AppBar(
          centerTitle: true,
          toolbarHeight: 50,
          backgroundColor: '#fcca0c'.toColor3(),
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(
            widget.title +
                'Y\'ello Alphabétisation $student \n Qu\'est ce qu\'on fait aujourdhui ?',
            style: TextStyle(
                color: Color(0xff000000), fontStyle: FontStyle.italic),
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
                    width: 150,
                    height: 150,
                    child: Card(
                      color: Color.fromRGBO(252, 202, 12, 1),
                      child: new InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/infosymbol');
                          //print("tapped");
                        },
                        child: Image(
                          image: AssetImage('assets/icons/preicon.png'),
                          width: 10,
                          height: 10,
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    width: 150,
                    height: 150,
                    child: Card(
                      color: Color.fromRGBO(252, 202, 12, 1),
                      child: new InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/menulecon');
                        },
                        child: Image(
                          image: AssetImage('assets/icons/book.png'),
                          width: 70,
                          height: 70,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 150,
                    child: Card(
                      color: Color.fromRGBO(252, 202, 12, 1),
                      child: new InkWell(
                        onTap: () {
                          Connexion();
                        },
                        child: Image(
                          image: AssetImage('assets/icons/pen.png'),
                          width: 70,
                          height: 70,
                        ),
                      ),
                    ),
                  ),
                  // ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  // Expanded(
                  SizedBox(
                    width: 150,
                    height: 50,
                    child: Text(
                      'Pré-alpha',
                      style: TextStyle(fontSize: 25),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  // SizedBox(
                  //   width: 150,
                  //   height: 50,
                  //   child: Text(
                  //     'Alphabets',
                  //     style: TextStyle(fontSize: 25),
                  //     textAlign: TextAlign.center,
                  //   ),
                  // ),
                  // ),
                  // Expanded(
                  SizedBox(
                    width: 150,
                    height: 50,
                    child: Text(
                      'Leçons',
                      style: TextStyle(fontSize: 25),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 50,
                    child: Text(
                      'Evaluations',
                      style: TextStyle(fontSize: 25),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  // ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  SizedBox(
                    width: 150,
                    height: 150,
                    child: Card(
                      color: Color.fromRGBO(252, 202, 12, 1),
                      child: new InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/ardoise');
                          //print("tapped");
                        },
                        child: Image(
                          image: AssetImage('assets/icons/board.png'),
                          width: 70,
                          height: 70,
                        ),
                      ),
                    ),
                  ),
                  // SizedBox(
                  //   width: 150,
                  //   height: 150,
                  //   child: Card(
                  //     color: Color.fromRGBO(252, 202, 12, 1),
                  //     child: new InkWell(
                  //       onTap: () {
                  //         //print("tapped");
                  //         Navigator.pushNamed(context, '/calculator');
                  //       },
                  //       child: Image(
                  //         image: AssetImage('assets/icons/calculator.png'),
                  //         width: 10,
                  //         height: 10,
                  //       ),
                  //     ),
                  //   ),
                  // ),

                  // SizedBox(
                  //   width: 150,
                  //   height: 150,
                  //   child: Card(
                  //     color: Color.fromRGBO(252, 202, 12, 1),
                  //     child: new InkWell(
                  //       onTap: () {
                  //         //print("tapped");
                  //         Navigator.pushNamed(context, '/maths');
                  //       },
                  //       child: Image(
                  //         image: AssetImage('assets/icons/maths.png'),
                  //         width: 10,
                  //         height: 10,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  SizedBox(
                    width: 150,
                    height: 150,
                    child: Card(
                      color: Color.fromARGB(255, 11, 11, 11),
                      child: new InkWell(
                        onTap: () {
                          SystemNavigator.pop();
                        },
                        child: Image.asset(
                          'assets/icons/close.png',
                          scale: 0.5,
                        ),
                      ),
                    ),
                  ),
                  //),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  // Expanded(
                  SizedBox(
                    width: 150,
                    height: 50,
                    child: Text(
                      'Ardoise',
                      style: TextStyle(fontSize: 25),
                      textAlign: TextAlign.center,
                    ),
                  ),

                  SizedBox(
                    width: 150,
                    height: 50,
                    child: Text(
                      'Fermer',
                      style: TextStyle(fontSize: 25),
                      textAlign: TextAlign.center,
                    ),
                  ),

                  // ),
                ],
              ),
            ],
          ),
        ),
        // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
