// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:projets/infosymbol.dart';
// import 'package:projets/menuEvaluation.dart';
// import 'package:projets/menu.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:audioplayers/audioplayers.dart';
// import 'dart:math';


// extension ColorExtension on String {
//   toColor18() {
//     var hexString = this;
//     final buffer = StringBuffer();
//     if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
//     buffer.write(hexString.replaceFirst('#', ''));
//     return Color(int.parse(buffer.toString(), radix: 16));
//   }
// }




// class EvaSymbol extends StatefulWidget {
//   const EvaSymbol({Key? key, required this.title}) : super(key: key);
//   final String title;

//   @override
//   State<EvaSymbol> createState() => _EvaSymbolState();
// }

// class _EvaSymbolState extends State<EvaSymbol> {
//   int _counter = 0;
//   int point = 0;
//   var debutEvaluation;
//   final player = AudioPlayer();
//   String letext = '';
//   String theAudioPath = '';
//   String ImgSymbol = '';
//   int symIndex1  = 0;
//   int symIndex2  = 0;
//   int symIndex3  = 0;
//   int symIndex4  = 0;
//   int symIndex5  = 0;
//   int symIndex6  = 0;
//   int symIndex7  = 0;
//   int symIndex8  = 0;
//   int symIndex9  = 0;
//   int symIndex10  = 0;
//   late SharedPreferences preferences;
  
//   var TextList = new List<String>.filled(23,'', growable:true);
//   var AudioName = new List<String>.filled(23,'', growable:true);
//   var ImageSymbol = new List<String>.filled(23,'', growable:true);
//   var ImgIndex = new List<int>.filled(23,0, growable:true);

//   @override
//   void initState() {
//     _counter = 0;
//     debutEvaluation = "false";
//     super.initState();
//     SetImagesSymbol();
//     SetAudioFile();
//     SetText();
//     //ImgSymbol = ImageSymbol[0];
//     RandomIndex();
//     theAudioPath = AudioName[_counter];
//     letext = TextList[_counter];
//     player.play(AssetSource(theAudioPath));
//   }

//   void RandomIndex(){
//     int max = 10;

//       setState(() {
//           symIndex1 = 10 - (Random().nextInt(max) + 1);
//           // symIndex2 = 10- (Random().nextInt(max) + 1);
//           symIndex2 = 10 - (Random().nextInt(max) + 1);
//           symIndex3 = 10 - (Random().nextInt(max) + 1);
//           symIndex4 = 10 - (Random().nextInt(max) + 1);
//           symIndex5 = 10 - (Random().nextInt(max) + 1);
//           symIndex6 = 10 - (Random().nextInt(max) + 1);
//           symIndex7 = 10 - (Random().nextInt(max) + 1);
//           symIndex8 = 10 - (Random().nextInt(max) + 1);
//           symIndex9 = 10 - (Random().nextInt(max) + 1);
//           symIndex10 = 10 - (Random().nextInt(max) + 1);
//       });
//       //print(randomNumber);
//   }

//   void CheckCoice(int index){
//     if(point < 50){     
//       int max = 10;
//       if(_counter == index){
//         setState(() {
//           _counter = 10 - (Random().nextInt(max) + 1);
//           point = point+10;
//           if (point == 50){
//             Saveresult();
//           }
//         });
//         theAudioPath = AudioName[_counter];
//         letext = TextList[_counter];
//         player.play(AssetSource(theAudioPath));
//         RandomIndex();
//         print(point);
//       }else{
//         Errorpopup(context);
//        //Navigator.pushReplacementNamed(context, '/infosymbol');
//       }
//     }//else {
//     //   Saveresult();
//     //   //Navigator.pushReplacementNamed(context, '/menu');
//     // }

//   }
//   Future Saveresult() async {
//     Successpopup();
//     preferences.setInt('symbol', 50);
//     print(preferences.getInt('symbol'));
//   }
//   //popup anonçant le début de l'évaluation
//   void Startpopup(BuildContext context){
//     showDialog(
//       context: context,
//       builder: (ctx) => AlertDialog(
//         title: Text(
//           "Evaluation",
//           textAlign: TextAlign.center,
//           style: TextStyle(
//             fontSize: 25,
//             color: Colors.red[400],
//           ),
//         ),
//         content: Text(
//           "Vous êtes sur le point de commencer votre évaluation",
//           textAlign: TextAlign.center,
//         ),
//         actions: <Widget>[
//           TextButton(
//             onPressed: () {
//               setState(() {
//                 debutEvaluation = "true";
//               });
              
//               Navigator.of(ctx).pop();
//             },
//             child: Text(
//               "COMMENCER",
//               style: TextStyle(fontSize: 25),
//             ),
//           ),
//           TextButton(
//             onPressed: () {
//               Navigator.of(ctx).pop();
//               Navigator.pushReplacementNamed(context, '/menuevaluation');
//             },
//             child: Text(
//               "Annuler",
//               style: TextStyle(fontSize: 25),
//             ),
//           )
//         ],
//       ),
//     );
//   }
//   //popup interdissant de faire un retour
//   void Alertpopup(BuildContext context){
//     showDialog(
//       context: context,
//       builder: (ctx) => AlertDialog(
//         title: Text(
//           "Notification",
//           textAlign: TextAlign.center,
//           style: TextStyle(
//             fontSize: 25,
//             color: Colors.red[400],
//           ),
//         ),
//         content: Text(
//           "Vous devez avoir la totalité des points avant de sortir",
//           textAlign: TextAlign.center,
//         ),
//         actions: <Widget>[
//           TextButton(
//             onPressed: () {
//               Navigator.of(ctx).pop();
//             },
//             child: Text(
//               "OK",
//               style: TextStyle(fontSize: 25),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   //popup de reponse erronée
//   void Errorpopup(BuildContext context){
//     showDialog(
//       context: context,
//       builder: (ctx) => AlertDialog(
//         title: Text(
//           "Résultat",
//           textAlign: TextAlign.center,
//           style: TextStyle(
//             fontSize: 25,
//             color: Colors.red[400],
//           ),
//         ),
//         content: Text(
//           "Mauvaise réponse",
//           textAlign: TextAlign.center,
//         ),
//         actions: <Widget>[
//           TextButton(
//             onPressed: () {
//               Navigator.of(ctx).pop();
//             },
//             child: Text(
//               "Réesayer",
//               style: TextStyle(fontSize: 25),
//             ),
//           )
//         ],
//       ),
//     );
//   }
  
//   //popup de succès de l'évaluation
//   void Successpopup(){
//     showDialog(
//       context: context,
//       builder: (ctx) => AlertDialog(
//         title: Text(
//           "Félicitation",
//           style: TextStyle(
//             fontSize: 25,
//             color: Colors.green[400],
//           ),
//         ),
//         content: Text(
//           "Vous avez réusir votre évaluation",
//         ),
//         actions: <Widget>[
//           TextButton(
//             onPressed: () {
//               Navigator.of(ctx).pop();
//               Navigator.pushReplacementNamed(context, '/menuevaluation');
//             },
//             child: Text(
//               "Ok",
//               style: TextStyle(fontSize: 25),
//             ),
//           )
//         ],
//       ),
//     );
//   }

//   void SetImagesSymbol(){
//     ImageSymbol  = [
//       'assets/prealpha/arcb.png', 'assets/prealpha/arcd.png', 'assets/prealpha/arcg.png',
//       'assets/prealpha/arch.png', 'assets/prealpha/barh.png', 'assets/prealpha/barv.png',
//       'assets/prealpha/cercle.png', 'assets/prealpha/oblicd.png', 'assets/prealpha/oblicg.png',
//       'assets/prealpha/point.png'
//     ];
//   }

//   void SetAudioFile(){
//     AudioName  = [
//       'assets/audio/prealpha/fairedesdépenses.mp3', 'assets/audio/prealpha/fairedesventes.mp3', 'assets/audio/prealpha/fairedesrecettes.mp3',
//       'assets/audio/prealpha/faireducommerce.mp3', 'assets/audio/prealpha/fairedesépargnes.mp3', 'assets/audio/prealpha/avoirdesclients.mp3',
//       'assets/audio/prealpha/fairelagriculture.mp3', 'assets/audio/prealpha/faireunerécolte.mp3', 'assets/audio/prealpha/utiliserdelengrais.mp3',
//       'assets/audio/prealpha/fairedescalcules.mp3'
//     ];
//   }

//   void SetText(){
//     TextList  = [
//       'faire des dépenses0', 'faire des ventes1', 'faire des recettes2',
//       'faire du commerce3', 'faire des épargnes4', 'avoir des clients5',
//       'faire l\'agriculture6', 'faire une récolte7', 'utiliser de l\'engrais8',
//       'faire des calcules9'
//     ];
//   }


//   @override
//   Widget build(BuildContext context) {
//     //affichage de popup d'evaluation
//     debutEvaluation != "true" ?
//     Future.delayed(Duration.zero, () => Startpopup(context)) : "";
//     return Scaffold(
//       //backgroundColor: '#fcca0c'.toColor2(),
//       appBar: AppBar(
//         centerTitle: true,
//         toolbarHeight: 50,
//         backgroundColor: '#fcca0c'.toColor18(),
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back_ios,color: Colors.black,),
//           tooltip: "Close",
//           onPressed: () {
//             Alertpopup(context);
//             //Navigator.pushReplacementNamed(context, '/menu');
//           },
//         ),
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title + 'Evaluation Symboles',style: TextStyle(color: Color(0xff000000),fontStyle: FontStyle.italic),),
//       ),
//       body: SingleChildScrollView(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.


//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           mainAxisSize : MainAxisSize.min,

//           children: <Widget> [

//             Padding(
//               padding: EdgeInsets.all(4), //apply padding to all four sides
//               child: Text('',style: TextStyle(fontSize: 10),),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: <Widget>[
//                 // Expanded(
//                 SizedBox(
//                   width: 500,
//                   height: 50,
//                   child: Text(letext,style: TextStyle(fontSize: 25),textAlign: TextAlign.center,),
//                 ),

//                 // ),
//               ],
//             ),
//             SizedBox(
//               width: 550,
//               height: 300,
//               child: Column(
//                 children: <Widget>[
//              Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: <Widget>[
//                   // Expanded(
//                   SizedBox(
//                     width: 90,
//                     height: 90,
//                     child:Card(
//                       child: new InkWell(
//                         onTap: () {
//                           CheckCoice(symIndex1);
//                         },
                        
//                         child: Image(                          
//                           image:AssetImage(ImageSymbol[symIndex1]),
//                           width: 10,
//                           height: 10,
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     width: 90,
//                     height: 90,
//                     child:Card(
//                       child: new InkWell(
//                         onTap: () {
//                           CheckCoice(symIndex2);
//                         },
                        
//                         child: Image(
//                           image:AssetImage(ImageSymbol[symIndex2]),
//                           width: 10,
//                           height: 10,
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     width: 90,
//                     height: 90,
//                     child:Card(
//                       child: new InkWell(
//                         onTap: () {
//                           CheckCoice(symIndex3);
//                         },
                        
//                         child: Image(
//                           image:AssetImage(ImageSymbol[symIndex3]),
//                           width: 10,
//                           height: 10,
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     width: 90,
//                     height: 90,
//                     child:Card(
//                       child: new InkWell(
//                         onTap: () {
//                           CheckCoice(symIndex4);
//                         },
                        
//                         child: Image(
//                           image:AssetImage(ImageSymbol[symIndex4]),
//                           width: 10,
//                           height: 10,
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     width: 90,
//                     height: 90,
//                     child:Card(
//                       child: new InkWell(
//                         onTap: () {
//                           CheckCoice(symIndex5);
//                         },
                        
//                         child: Image(
//                           image:AssetImage(ImageSymbol[symIndex5]),
//                           width: 10,
//                           height: 10,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: <Widget>[
//                   // Expanded(
//                   SizedBox(
//                     width: 90,
//                     height: 90,
//                     child:Card(
//                       child: new InkWell(
//                         onTap: () {
//                           CheckCoice(symIndex6);
//                         },
                        
//                         child: Image(
//                           image:AssetImage(ImageSymbol[symIndex6]),
//                           width: 10,
//                           height: 10,
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     width: 90,
//                     height: 90,
//                     child:Card(
//                       child: new InkWell(
//                         onTap: () {
//                           CheckCoice(symIndex7);
//                         },
                        
//                         child: Image(
//                           image:AssetImage(ImageSymbol[symIndex7]),
//                           width: 10,
//                           height: 10,
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     width: 90,
//                     height: 90,
//                     child:Card(
//                       child: new InkWell(
//                         onTap: () {
//                           CheckCoice(symIndex8);
//                         },
                        
//                         child: Image(
//                           image:AssetImage(ImageSymbol[symIndex8]),
//                           width: 10,
//                           height: 10,
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     width: 90,
//                     height: 90,
//                     child:Card(
//                       child: new InkWell(
//                         onTap: () {
//                           CheckCoice(symIndex9);
//                         },
                        
//                         child: Image(
//                           image:AssetImage(ImageSymbol[symIndex9]),
//                           width: 10,
//                           height: 10,
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     width: 90,
//                     height: 90,
//                     child:Card(
//                       child: new InkWell(
//                         onTap: () {
//                           CheckCoice(symIndex10);
//                         },
                        
                        
//                       ),
//                     ),
//                   ),

//                 ],
//               ),
//                   SizedBox(
//                     width: 500,
//                     height: 30,

//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: <Widget>[
//                       // Expanded(
//                       SizedBox(
//                         width: 100,
//                         height: 70,
//                         child: Text('$point/50',style: TextStyle(fontSize: 30,color: Colors.amber),textAlign: TextAlign.center),
//                       ),

//                       // ),
//                     ],
//                   ),

//               ],
//               ),
//             ),



//           ],
//         ),
//       ),
//       floatingActionButton: Container(
//         height: 80.0,
//         width: 80.0,
//         child: FittedBox(

//           child: FloatingActionButton(
//               backgroundColor: Colors.amber,
//               child: const Icon(Icons.repeat,color: Colors.black,),
//               onPressed: () {
//                 RandomIndex();
//               }),
//         ),
//       ),
//       // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
