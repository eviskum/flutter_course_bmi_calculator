import 'package:flutter/material.dart';
import 'package:flutter_course_bmi_calculator/input_page.dart';
import 'package:flutter_course_bmi_calculator/results_page.dart';

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(
      //   primaryColor: Colors.white,
      //   appBarTheme: AppBarTheme().copyWith(backgroundColor: Color(0xFF0A0E21)),
      //   floatingActionButtonTheme: FloatingActionButtonThemeData(backgroundColor: Colors.purple),
      //   scaffoldBackgroundColor: Color(0xFF0A0E21),
      //   textTheme: TextTheme(
      //     bodyText1: TextStyle(color: Colors.white),
      //     bodyText2: TextStyle(color: Colors.white),
      //   ),
      //   colorScheme: Theme.of(context).colorScheme.copyWith(
      //         secondary: Colors.white,
      //       ),
      // ),
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        appBarTheme: AppBarTheme().copyWith(backgroundColor: Color(0xFF0A0E21)),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        // sliderTheme: SliderThemeData()
        //     .copyWith(thumbColor: Colors.red, activeTrackColor: Colors.red, inactiveTrackColor: Colors.white),
      ),
      routes: {
        '/': (context) => InputPage(),
        ResultsPage.routeName: (context) => ResultsPage(),
      },
      // home: InputPage(),
    );
  }
}
