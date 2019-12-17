import 'package:flutter/material.dart';
import 'package:flutter_exercise_catalog/bmi_calculator/screens/input_page.dart';
import 'package:flutter_exercise_catalog/bmi_calculator/screens/result_page.dart';

class BmiHome extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Calculator',
      theme: ThemeData(
          primaryColor: Color(0xFF0A0E21),
          scaffoldBackgroundColor: Color(0xFF0A0E21),
          textTheme: TextTheme(body1: TextStyle(color: Color(0xFFFFFFFF)))

      ),

      home: InputPage(),
      routes: {
        '/bmiHome' : (context) => BmiHome(),
        '/results' : (context) => ResultsPage(),
      },
    );
  }
}
