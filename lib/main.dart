import 'package:kevinlinro/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    theme: themeData,
  ));
}

final ThemeData themeData = ThemeData(
  // accentColor: Colors.redAccent,
  brightness: Brightness.dark,
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homepage(),
    );
  }
}
