import 'package:flutter/material.dart';

import 'pages/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF1E1F33),
        scaffoldBackgroundColor: Color(0xFF1E1F33),
      ),
      home: InputPage(),
    );
  }
}
