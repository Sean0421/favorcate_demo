import 'package:flutter/material.dart';

class HYAppTheme {
  //1.共有属性
  static const double bodyFontSize = 14;
  static const double smallFontSize = 16;
  static const double normalFontSize = 20;
  static const double largeFontSize = 24;

  //2.普通模式
  static const Color normalColor = Colors.red;

  static final ThemeData normalTheme = ThemeData(
      primarySwatch: Colors.pink,
      canvasColor: Color.fromRGBO(255, 254, 222, 1),
      textTheme: TextTheme(
        bodyText2: TextStyle(fontSize: bodyFontSize),
        headline4: TextStyle(fontSize: smallFontSize, ),
        headline3: TextStyle(fontSize: normalFontSize),
        headline2: TextStyle(fontSize: largeFontSize, fontWeight: FontWeight.w700, color: Colors.black)
      )
  );

  //3.暗黑模式
  static const Color darkColor = Colors.green;

  static final ThemeData darkTheme = ThemeData(
      primarySwatch: Colors.grey,
      textTheme: TextTheme(
          bodyText2: TextStyle(fontSize: largeFontSize, color: darkColor)
      )
  );
}
