import 'package:flutter/material.dart';

class Palette {
  static const Color primaryColor = Color(0xff2962ff);
  static const Color green = Color.fromARGB(199, 6, 185, 33);
  static const Color red = Color.fromARGB(199, 255, 0, 0);
  static const MaterialColor kToDark = MaterialColor(
    0xff2962ff, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: Color(0xff2962ff), //10%
      100: Color(0xff2962ff), //20%
      200: Color(0xff2962ff), //30%
      300: Color(0xff2962ff), //40%
      400: Color(0xff2962ff), //50%
      500: Color(0xff2962ff), //60%
      600: Color(0xff2962ff), //70%
      700: Color(0xff2962ff), //80%
      800: Color(0xff2962ff), //90%
      900: Color(0xff2962ff), //100%
    },
  );

  static const Color paleOrange = Color(0xffffe8c7);
  static const Color paleDarkOrange = Color(0xffa06b20);

  //appbar background color
  static const Color background = Color(0xFFf9fafc);
} // yo
