import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_prodigious_ui/Utility.dart';
import 'package:flutter_prodigious_ui/routes/01_Single_Line_Theme.dart';
import 'package:google_fonts/google_fonts.dart';

const MaterialColor color1 = Colors.cyan;
const Color iconColor = Colors.black;
const double iconSize = 30.0;
void main() {
  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: color1,
      systemNavigationBarColor: color1,
      systemNavigationBarDividerColor: color1,
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Prodigious UI",
      home: MyAppStateful(),
    );
  }
}

class MyAppStateful extends StatefulWidget {
  @override
  _MyAppState createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyAppStateful> {
  @override
  Widget build(BuildContext context) {
    changeApplicationTheme(Colors.blue);
    return Scaffold(
        body:
        Padding(
          padding: const EdgeInsets.only(top: 35.0),
          child: Container(
            alignment: Alignment.center,
            child: Column(
              children: <Widget>[
                OutlineButton(
                  child: Text("01_Flat_UI"), onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => Single_Line_Theme()) );
                },),
              ],
            )
          ),
        ),
);
  }
}
