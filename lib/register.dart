// ignore_for_file: use_build_context_synchronously

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:shared_preferences/shared_preferences.dart';

import 'package:http/http.dart' as http;

const List<String> list = <String>['Soubré', 'Gagnoa', 'Boundiali'];

extension ColorExtension on String {
  toColor15() {
    var hexString = this;
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}

class Register extends StatefulWidget {
  const Register({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  String go = '';
  final eleve = TextEditingController();
  final formateur = TextEditingController();
  final numero = TextEditingController();
  String ville = "";
  int theId = 0;
  String thereponse = "";
  late SharedPreferences preferences;
  String dropdownValue = list.first;

  void Clean() {
    print(theId);
    eleve.clear();
    numero.clear();
    Navigator.pushReplacementNamed(context, '/dashboard');
  }

  void AddToPreference() {}
  //---- Enregistrer un elve ----
  Future senddata() async {
    thereponse = "";
    final response = await http
        .post(Uri.parse("https://s-p4.com/yello/register.php"), body: {
      "nom": eleve.text,
      "ville": dropdownValue,
      "numero": numero.text,
      "formateur": formateur.text,
    });

    setState(() {
      thereponse = response.body.toString();
      //thereponse = json.decode(response.body);
      if (thereponse == 'Error 1') {
        //thereponse == 'Identifiant introuvable';
      } else if (thereponse == 'Error 2') {
        //thereponse == 'Probleme de Serveur';
      } else if (thereponse == 'Error 3') {
        //thereponse == 'Tel existe deja ';
      } else {
        preferences.setString('id', thereponse);
        preferences.setString('nom', eleve.text);
        preferences.setString('ville', dropdownValue);
        preferences.setString('formateur', formateur.text);
        preferences.setString('numero', numero.text);
        preferences.setInt('litteratie', 0);
        preferences.setInt('numeratie', 0);
        preferences.setInt('symbol', 0);
        //thereponse = 'Elève enregistré';
        Clean();
      }
    });
  }

  @override
  void initState() {
    super.initState();
    init();
  }

  Future init() async {
    preferences = await SharedPreferences.getInstance();
    //String? nom = preferences.getString('nom') ?? 'no data';
    CheckConfig();
  }

  void CheckConfig() {
    //preferences.setString('nom', eleve.text);
    String? nom = preferences.getString('nom') ?? '';
    print(nom);
    if (nom != '') {
      Navigator.pushReplacementNamed(context, '/dashboard');
    }
  }

  void GotoMain() {
    Navigator.pushReplacementNamed(context, '/menu');
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
          backgroundColor: '#fcca0c'.toColor15(),
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(
            widget.title + 'Y\'ello Alphabétisation Admin',
            style: TextStyle(
                color: Color(0xff000000), fontStyle: FontStyle.italic),
          ),
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            tooltip: "Close",
            onPressed: () {
              Navigator.pushNamed(context, '/menu');
            },
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
                  'Enregistrer un élève',
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
                      controller: eleve,
                      obscureText: false,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Nom et prénoms de l\'élève',
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
                    child: TextField(
                      controller: numero,
                      keyboardType: TextInputType.number,
                      obscureText: false,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'le numéro Momo de l\'élève',
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
                    child: TextField(
                      controller: formateur,
                      obscureText: false,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Nom et prénoms du formateur',
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
                    child: DropdownButton<String>(
                      value: dropdownValue,
                      icon: const Icon(Icons.arrow_downward),
                      elevation: 16,
                      style: const TextStyle(color: Colors.black, fontSize: 20),
                      underline: Container(
                        height: 2,
                        color: Colors.black,
                      ),
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          dropdownValue = value!;
                        });
                      },
                      items: list.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
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
                        backgroundColor: '#fcca0c'.toColor15(),
                      ),
                      onPressed: () async {
                        senddata();
                        //CheckConfig();
                      },
                      child: Text(
                        'Enregistrer',
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
                      style: TextStyle(fontSize: 20, color: Colors.red),
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
