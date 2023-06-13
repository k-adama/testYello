import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyBlocage());
}

class MyBlocage extends StatefulWidget {
  @override
  _MyBlocageState createState() => _MyBlocageState();
}

class _MyBlocageState extends State<MyBlocage> {

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Text("Période d'utilisation atteinte !"),
            actions: <Widget>[
              TextButton(
                child: Text('Fermer', style: TextStyle(color: Colors.black, fontSize: 20),),
                onPressed: () {
                 SystemNavigator.pop();
                },
              ),
            ],
          );
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      title: 'Yello',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Yello'),
        ),
        body:  SingleChildScrollView(
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
                        //print("tapped");
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
                        Navigator.pushNamed(context, '/connexionEvaluation');
                        // print("tapped");
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
      ),
    );
  }
}
