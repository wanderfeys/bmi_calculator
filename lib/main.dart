import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputPage(),
      theme: ThemeData(
        primaryColor: Color(0xFFc8ddef),
        accentColor: Color(0xFF670034),
        scaffoldBackgroundColor: Color(0xFFd4e0e9),
        textTheme: TextTheme(body1: TextStyle(color: Color(0xFF670034))),
      ),
    );
  }
}
