import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


extension ColorExtension on String {
  toColor5() {
    var hexString = this;
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}

class MenuLecon extends StatefulWidget {
  const MenuLecon({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MenuLecon> createState() => _MenuLeconState();
}

class _MenuLeconState extends State<MenuLecon> {

  late PageController _controller = PageController(
    initialPage: 0,
  );
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _controller = PageController(
      initialPage: 0,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: '#fcca0c'.toColor2(),
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 50,
        backgroundColor: '#fcca0c'.toColor5(),
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(
          widget.title + 'Les leçons ',
          style:
              TextStyle(color: Color(0xff000000), fontStyle: FontStyle.italic),
        ),
        // leading: IconButton(
        //   icon: const Icon(
        //     Icons.arrow_back_ios,
        //     color: Colors.black,
        //   ),
        //   tooltip: "Close",
        //   onPressed: () {
        //     Navigator.pushReplacementNamed(context, '/menu');
        //   },
        // ),
      ),
      body: PageView(
        controller: _controller,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/prealpha');
                          //print("tapped");
                        },
                        child: Center(child: Text('Pré-alpha')),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/lecon1');
                          //print("tapped");
                        },
                        child: Center(child: Text('Leçon 1')),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/lecon2');
                          //print("tapped");
                        },
                        child: Center(child: Text('Leçon 2')),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/lecon3');
                          //print("tapped");
                        },
                        child: Center(child: Text('Leçon 3')),
                      ),
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/lecon4');
                          //print("tapped");
                        },
                        child: Center(child: Text('Leçon 4')),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          // // Navigator.pushNamed(context, '/lecon1');
                          //print("tapped");
                          Navigator.pushNamed(context, '/lecon5');
                        },
                        child: Center(child: Text('Leçon 5')),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          // // Navigator.pushNamed(context, '/lecon1');
                          //print("tapped");
                          Navigator.pushNamed(context, '/lecon6');
                        },
                        child: Center(child: Text('Leçon 6')),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/lecon7');
                        },
                        child: Center(child: Text('Leçon 7')),
                      ),
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          // // Navigator.pushNamed(context, '/lecon1');
                          //print("tapped");
                          Navigator.pushNamed(context, '/lecon8');
                        },
                        child: Center(child: Text('Leçon 8')),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          // // Navigator.pushNamed(context, '/lecon1');
                          // //print("tapped");
                          Navigator.pushNamed(context, '/lecon9');
                        },
                        child: Center(child: Text('Leçon 9')),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/lecon10');
                        },
                        child: Center(child: Text('Leçon 10')),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          // // Navigator.pushNamed(context, '/lecon1');
                          //print("tapped");
                          Navigator.pushNamed(context, '/lecon11');
                        },
                        child: Center(child: Text('Leçon 11')),
                      ),
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          // // Navigator.pushNamed(context, '/lecon1');
                          //print("tapped");
                          Navigator.pushNamed(context, '/lecon12');
                        },
                        child: Center(child: Text('Leçon 12')),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          // Navigator.pushNamed(context, '/lecon1');
                          //print("tapped");
                          Navigator.pushNamed(context, '/lecon13');
                        },
                        child: Center(child: Text('Leçon 13')),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          // Navigator.pushNamed(context, '/lecon1');
                          //print("tapped");
                          Navigator.pushNamed(context, '/lecon14');
                        },
                        child: Center(child: Text('Leçon 14')),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/lecon15');
                        },
                        child: Center(child: Text('Leçon 15')),
                      ),
                    ),
                  ),
                ],
              ),

              // ),
            ],
          ),
          //liste 2
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/lecon16');
                        },
                        child: Center(child: Text('leçon 16')),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/lecon17');
                        },
                        child: Center(child: Text('Leçon 17')),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/lecon18');
                        },
                        child: Center(child: Text('Leçon 18')),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/lecon19');
                        },
                        child: Center(child: Text('Leçon 19')),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/lecon20');
                        },
                        child: Center(child: Text('Leçon 20')),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/lecon21');
                        },
                        child: Center(child: Text('Leçon 21')),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/lecon22');
                        },
                        child: Center(child: Text('Leçon 22')),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/lecon23');
                        },
                        child: Center(child: Text('Leçon 23')),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          // // Navigator.pushNamed(context, '/lecon1');
                          //print("tapped");
                          Navigator.pushNamed(context, '/lecon24');
                        },
                        child: Center(child: Text('Leçon 24')),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/lecon25');
                        },
                        child: Center(child: Text('Leçon 25')),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/lecon26');
                        },
                        child: Center(child: Text('Leçon 26')),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          // // Navigator.pushNamed(context, '/lecon1');
                          //print("tapped");
                          Navigator.pushNamed(context, '/lecon27');
                        },
                        child: Center(child: Text('Leçon 27')),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/lecon28');
                        },
                        child: Center(child: Text('Leçon 28')),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/lecon29');
                        },
                        child: Center(child: Text('Leçon 29')),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/lecon30');
                        },
                        child: Center(child: Text('Leçon 30')),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/lecon31');
                        },
                        child: Center(child: Text('Leçon 31')),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/lecon32');
                          //print("tapped");
                        },
                        child: Center(child: Text('Leçon 32')),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/lecon33');
                          //print("tapped");
                        },
                        child: Center(child: Text('Leçon 33')),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/lecon34');
                          //print("tapped");
                        },
                        child: Center(child: Text('Leçon 34')),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/lecon35');
                          //print("tapped");
                        },
                        child: Center(child: Text('Leçon 35')),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          // Navigator.pushNamed(context, '/lecon2');
                          //print("tapped");
                          Navigator.pushNamed(context, '/lecon36');
                        },
                        child: Center(child: Text('Leçon 36')),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          // Navigator.pushNamed(context, '/lecon3');
                          //print("tapped");
                          Navigator.pushNamed(context, '/lecon37');
                        },
                        child: Center(child: Text('Leçon 37')),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          // Navigator.pushNamed(context, '/lecon3');
                          //print("tapped");
                          Navigator.pushNamed(context, '/lecon38');
                        },
                        child: Center(child: Text('Leçon 38')),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          // Navigator.pushNamed(context, '/lecon3');
                          //print("tapped");
                          Navigator.pushNamed(context, '/lecon39');
                        },
                        child: Center(child: Text('Leçon 39')),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          // Navigator.pushNamed(context, '/lecon4');
                          //print("tapped");
                          Navigator.pushNamed(context, '/lecon40');
                        },
                        child: Center(child: Text('Leçon 40')),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/lecon41');
                          //print("tapped");
                        },
                        child: Center(child: Text('Leçon 41')),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/lecon42');
                          //print("tapped");
                        },
                        child: Center(child: Text('Leçon 42')),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/lecon43');
                          //print("tapped");
                        },
                        child: Center(child: Text('Leçon 43')),
                      ),
                    ),
                  ),
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                SizedBox(
                  width: 150,
                  height: 60,
                  child: Card(
                    child: new InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/lecon44');
                        //print("tapped");
                      },
                      child: Center(child: Text('Leçon 44')),
                    ),
                  ),
                ),
                SizedBox(
                  width: 150,
                  height: 60,
                  child: Card(
                    child: new InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/lecon45');
                        //print("tapped");
                      },
                      child: Center(child: Text('Leçon 45')),
                    ),
                  ),
                ),
                SizedBox(
                  width: 150,
                  height: 60,
                  child: Card(
                    child: new InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/lecon46');
                        //print("tapped");
                      },
                      child: Center(child: Text('Leçon 46')),
                    ),
                  ),
                ),
                SizedBox(
                  width: 150,
                  height: 60,
                  child: Card(
                    child: new InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/lecon47');
                        //print("tapped");
                      },
                      child: Center(child: Text('Leçon 47')),
                    ),
                  ),
                ),
              ]),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/lecon48');
                          //print("tapped");
                        },
                        child: Center(child: Text('Leçon 48')),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/lecon49');
                          //print("tapped");
                        },
                        child: Center(child: Text('Leçon 49')),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/lecon50');
                          //print("tapped");
                        },
                        child: Center(child: Text('Leçon 50')),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/lecon51');
                          //print("tapped");
                        },
                        child: Center(child: Text('Leçon 51')),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/lecon52');
                          //print("tapped");
                        },
                        child: Center(child: Text('Leçon 52')),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/lecon53');
                          //print("tapped");
                        },
                        child: Center(child: Text('Leçon 53')),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/lecon54');
                          //print("tapped");
                        },
                        child: Center(child: Text('Leçon 54')),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/lecon55');
                          //print("tapped");
                        },
                        child: Center(child: Text('Leçon 55')),
                      ),
                    ),
                  ),
                ],
              ),
              
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                SizedBox(
                  width: 150,
                  height: 60,
                  child: Card(
                    child: new InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/lecon56');
                        //print("tapped");
                      },
                      child: Center(child: Text('Leçon 56')),
                    ),
                  ),
                ),
                SizedBox(
                  width: 150,
                  height: 60,
                  child: Card(
                    child: new InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/lecon57');
                        //print("tapped");
                      },
                      child: Center(child: Text('Leçon 57')),
                    ),
                  ),
                ),
                SizedBox(
                  width: 150,
                  height: 60,
                  child: Card(
                    child: new InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/lecon58');
                        //print("tapped");
                      },
                      child: Center(child: Text('Leçon 58')),
                    ),
                  ),
                ),
                SizedBox(
                  width: 150,
                  height: 60,
                  child: Card(
                    child: new InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/lecon59');
                        //print("tapped");
                      },
                      child: Center(child: Text('Leçon 59')),
                    ),
                  ),
                ),
              ]),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/lecon60');
                          //print("tapped");
                        },
                        child: Center(child: Text('Leçon 60')),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/lecon61');
                          //print("tapped");
                        },
                        child: Center(child: Text('Leçon 61')),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/lecon62');
                          //print("tapped");
                        },
                        child: Center(child: Text('Leçon 62')),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/lecon63');
                          //print("tapped");
                        },
                        child: Center(child: Text('Leçon 63')),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/lecon64');
                          //print("tapped");
                        },
                        child: Center(child: Text('Leçon 64')),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/lecon65');
                          //print("tapped");
                        },
                        child: Center(child: Text('Leçon 65')),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/lecon66');
                          //print("tapped");
                        },
                        child: Center(child: Text('Leçon 66')),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Card(
                      child: new InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/lecon67');
                          //print("tapped");
                        },
                        child: Center(child: Text('Leçon 67')),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
