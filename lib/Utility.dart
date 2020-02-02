import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

changeApplicationTheme(MaterialColor color){
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: color,
      systemNavigationBarColor: color,
      systemNavigationBarDividerColor: color,
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
  );
}