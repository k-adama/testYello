import 'package:flutter/services.dart';

import 'package:flutter/material.dart';
import 'menu.dart';
import 'downloading_dialog.dart';

extension ColorExtension on String {
  toColor28() {
    var hexString = this;
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}

class UpdateApp extends StatefulWidget {
  const UpdateApp({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<UpdateApp> createState() => _UpdateAppState();
}

class _UpdateAppState extends State<UpdateApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 80,
        backgroundColor: '#fcca0c'.toColor3(),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          tooltip: "Close",
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/menu');
          },
        ),
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(
          'Mise à jour',
          style: TextStyle(
              color: Color(0xff000000),
              fontStyle: FontStyle.italic,
              fontSize: 40),
        ),
      ),
      body: Center(
        child: Image(
          image: AssetImage("assets/icons/update.png"),
        ),
        // child: Text(
        //   'Faites une mise à jour',
        // ),
      ),

      floatingActionButton: Container(
        height: 100.0,
        width: 100.0,
        child: FittedBox(
          child: FloatingActionButton(
            backgroundColor: Colors.amber,
            child: const Icon(
              Icons.update_rounded,
              color: Colors.black,
              size: 40,
            ),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => const DownloadingDialog(),
              );
            },
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
