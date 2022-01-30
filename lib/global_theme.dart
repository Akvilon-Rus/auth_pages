
import 'package:flutter/material.dart';

ThemeData globalTheme() => ThemeData(
  fontFamily: 'Georgia',
  splashColor: Colors.cyan,

  colorScheme: ColorScheme.fromSwatch(
    brightness: Brightness.light,
    primarySwatch: Colors.lightBlue,
  ).copyWith(
    secondary: Colors.indigo,
  ),

  textTheme: const TextTheme(
    headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold ),
    headline5: TextStyle(fontSize: 30.0, fontStyle: FontStyle.italic),
    bodyText2: TextStyle(fontSize: 16.0, fontFamily: 'Hind', color: Colors.lightBlue),
  ),
);
