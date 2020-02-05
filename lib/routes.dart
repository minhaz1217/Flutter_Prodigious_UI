import 'package:flutter/widgets.dart';
import 'package:flutter_prodigious_ui/main.dart';
import 'package:flutter_prodigious_ui/routes/01_Single_Line_Theme.dart';


class Routes{
  static Map<String, Widget Function(BuildContext) > routes ={
    '/'                     : (context) => MyAppStateful(),
    Single_Line_Theme.name  : (context) => Single_Line_Theme_Stateful(),
  };
}


