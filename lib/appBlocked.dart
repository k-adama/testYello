import 'package:flutter/material.dart';

extension ColorExtension on String {
  tooColor() {
    var hexString = this;
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}

class appBlocked extends StatefulWidget {
  @override
  State<appBlocked> createState() => _appBlockedState();
}

class _appBlockedState extends State<appBlocked> {
  String TheLogo = '';

  StarCount() {
    Future.delayed(Duration(seconds: 10), () {
      setState(() {
        TheLogo = 'assets/mtn/accueil.png';
      });
    });
  }

  void initState() {
    super.initState();

    setState(() {
      TheLogo = 'assets/mtn/accueil.png';
    });
    StarCount();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: '#fcca0c'.tooColor(),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image(
              image: AssetImage(TheLogo),
            ),
            Positioned(
              bottom: 50,
              child: Text(
                'Erreur sur le serveur. Veuilllez contacter votre développeur !',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
