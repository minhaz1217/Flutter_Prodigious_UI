import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_prodigious_ui/Utility.dart';
import 'package:google_fonts/google_fonts.dart';

const MaterialColor color1 = Colors.orange;
const Color iconColor = Colors.black;
const double iconSize = 30.0;
//void main() {
//  runApp(MyApp());
//  SystemChrome.setSystemUIOverlayStyle(
//    const SystemUiOverlayStyle(
//      statusBarColor: color1,
//      systemNavigationBarColor: color1,
//      systemNavigationBarDividerColor: color1,
//      systemNavigationBarIconBrightness: Brightness.dark,
//    ),
//  );
//}

class Single_Line_Theme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    changeApplicationTheme(color1);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Prodigious UI",
      home: Single_Line_Theme_Stateful(),
    );
  }
}

class Single_Line_Theme_Stateful extends StatefulWidget {

  @override
  _Single_Line_Theme_State  createState() {

    return _Single_Line_Theme_State();
  }
}

class _Single_Line_Theme_State extends State<Single_Line_Theme_Stateful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: color1,
        leading: IconButton(
          icon: Icon(Icons.menu, size: iconSize, color: iconColor,),
          onPressed: () {
            debugPrint("Pressed the Leading Button");
          },
        ),
//        title: Text("HI"),
        actions: <Widget>[
          Builder(
            builder: (BuildContext context) {
              return IconButton(
                  icon: const Icon(Icons.alarm, size: iconSize, color: iconColor,),
                  tooltip: "Set remainder",
                  onPressed: () {
                    Scaffold.of(context).showSnackBar(SnackBar(
                      content: Text("Setting Remainder..."),
                    ));
                  });
            },
          ),
          IconButton(
            icon: const Icon(Icons.format_paint, size: iconSize, color: iconColor,),
            tooltip: "Edit Theme",
            onPressed: () {
              print("Theme Edit Clicked");
//              debugPrint("HI 3");
            },
          ),
          IconButton(
            icon: const Icon(Icons.category, size: iconSize, color: iconColor,),
            tooltip: "Categories",
            onPressed: () {},
          )
        ],
      ),
      backgroundColor: color1,
      body: Container(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Yo mama so old, \nshe co-wrote the Ten Commandments",style: GoogleFonts.dosis(fontSize: 36.0,
            fontWeight: FontWeight.w800,
          ), textAlign: TextAlign.center, softWrap: true,),
        ),
      ),



//        Text("Yo mama so old, \nshe co-wrote the Ten Commandments",style: TextStyle(fontSize: 24),)

      bottomNavigationBar:
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          FlatButton(
            child: Icon(Icons.share, size: iconSize, color: iconColor,),
            onPressed: () {
              print("Flat 1");
            },
          ),

          FlatButton(
            child: Icon(Icons.star_border, size: iconSize, color: iconColor,),
            onPressed: () {
              print("Flat 2");
            },
          ),

        ],
      ),

    );
  }
}
