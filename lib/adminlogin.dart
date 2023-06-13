import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'appBlocked.dart';
import 'infosymbol.dart';
import 'register.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:projets/dashboard.dart';
import 'package:http/http.dart' as http;
import 'main.dart';

extension ColorExtension on String {
  toColor14() {
    var hexString = this;
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}

class AdminLogin extends StatefulWidget {
  const AdminLogin({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<AdminLogin> createState() => _AdminLoginState();
}

class _AdminLoginState extends State<AdminLogin> {
  int _counter = 0;
  String go = '';
  final pass = TextEditingController();
  String thereponse = "";
  late SharedPreferences preferences;

  late Timer _timer;
  bool _appEnabled = true;

  //---- Enregistrer un elve ----
  Future senddata(String pwd) async {
    if (pwd == "YelloAlpha") {
      Navigator.pushReplacementNamed(context, '/register');
      // Navigator.pushReplacementNamed(context, '/menuEva');
    } else {
      setState(() {
        thereponse = "Erreur de mot de passe";
      });
    }
  }

  @override
  void initState() {
    super.initState();
    final DateTime deadline = DateTime(2023, 6, 20);
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (DateTime.now().isAfter(deadline)) {
        timer.cancel();
        setState(() {
          _appEnabled = false;
        });
      }
    });
    init();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  Future init() async {
    preferences = await SharedPreferences.getInstance();
  }

  void GotoMain() {
    !_appEnabled
        ? Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => appBlocked()))
        : Navigator.pushReplacementNamed(context, '/main');
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        GotoMain();
        return false;
      },
      child: Scaffold(
        //backgroundColor: '#fcca0c'.toColor2(),

        appBar: AppBar(
          centerTitle: true,
          toolbarHeight: 80,
          backgroundColor: '#fcca0c'.toColor14(),
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(
            widget.title + 'Y\'ello Alphabétisation Admin',
            style: TextStyle(
                color: Color(0xff000000), fontStyle: FontStyle.italic),
          ),
        ),

        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(
                width: 300,
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.all(4), //apply padding to all four sides
                child: Text(
                  'Mot de passe',
                  style: TextStyle(fontSize: 25),
                ),
              ),
              SizedBox(
                width: 300,
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  // Expanded(
                  SizedBox(
                    width: 300,
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
                ],
              ),
              SizedBox(
                width: 300,
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  // Expanded(
                  SizedBox(
                    width: 300,
                    height: 60,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: '#fcca0c'.toColor14(),
                      ),
                      onPressed: () {
                        if (!_appEnabled) {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => appBlocked()));
                        } else {
                          senddata(pass.text);
                        }
                      },
                      child: Text(
                        'Connexion',
                        style: TextStyle(
                            fontSize: 25,
                            color: CupertinoColors.darkBackgroundGray),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 300,
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  // Expanded(
                  SizedBox(
                    width: 300,
                    height: 60,
                    child: Text(
                      thereponse,
                      style: TextStyle(fontSize: 25, color: Colors.red),
                    ),
                  ),
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
