import 'package:flutter/material.dart';

class MapAppTheme {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
      surfaceContainer: Color(0xFFC6ECFF),
      primaryContainer: Colors.white,
      onSurface: Color(0xFFFEFEE9),
      brightness: Brightness.light,
      surfaceTint: Colors.black,
      tertiaryContainer: Colors.green,
    ),
    iconTheme: IconThemeData(color: Colors.black),
    textTheme: TextTheme(headlineSmall: TextStyle(color: Colors.black)),
    listTileTheme: ListTileThemeData(textColor: Colors.black),
    checkboxTheme: CheckboxThemeData(
      checkColor: WidgetStateProperty.all(Colors.black),
      side: BorderSide(color: Colors.black),
      overlayColor: WidgetStateProperty.all(Colors.white),
      fillColor: WidgetStateProperty.all(Colors.grey[100]),
    ),
    radioTheme: RadioThemeData(
      overlayColor: WidgetStateProperty.all(Colors.grey[100]),
      fillColor: WidgetStateProperty.all(Colors.black),
    ),
    switchTheme: SwitchThemeData(
      overlayColor: WidgetStateProperty.all(Colors.black),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    iconTheme: IconThemeData(color: Color.fromARGB(255, 93, 66, 192)),
    colorScheme: ColorScheme.dark(
      surfaceContainer: Color(0xFF1E114B),
      primaryContainer: Color(0xFF3A2587),
      onSurface: Color(0xFF473488),
      brightness: Brightness.dark,
      surfaceTint: Colors.white,
      tertiaryContainer: Colors.purple,
      tertiaryFixed: Color(0xFF875DE3),
    ),
    textTheme: TextTheme(headlineSmall: TextStyle(color: Colors.white)),
    listTileTheme: ListTileThemeData(textColor: Colors.white),

    checkboxTheme: CheckboxThemeData(
      checkColor: WidgetStateProperty.all(Colors.white),
      side: BorderSide(color: Color.fromARGB(255, 30, 17, 75)),
      overlayColor: WidgetStateProperty.all(Color.fromARGB(255, 93, 66, 192)),
      fillColor: WidgetStateProperty.all(Color.fromARGB(255, 30, 17, 75)),
    ),

    switchTheme: SwitchThemeData(
      thumbColor: WidgetStateProperty.all(Color.fromARGB(255, 93, 66, 192)),
      trackColor: WidgetStateProperty.all(Colors.black),
    ),
  );
}
