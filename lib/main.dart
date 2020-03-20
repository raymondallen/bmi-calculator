import 'package:flutter/material.dart';
import 'screens/input_page.dart';
import 'screens/result_page.dart';
import 'constants.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => InputPage(),
        '/result': (context) => ResultPage(),
      },
      theme: ThemeData(
        primaryColor: Color(0xff0A0E21),
        scaffoldBackgroundColor: kBackgroundColor,
        accentColor: Color(0xffFF0066),
        textTheme: TextTheme(
          body1: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
