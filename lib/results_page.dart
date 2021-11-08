import 'package:flutter/material.dart';
import 'package:flutter_course_bmi_calculator/bottom_button.dart';
import 'package:flutter_course_bmi_calculator/calculator_brain.dart';
import 'package:flutter_course_bmi_calculator/constants.dart';
import 'package:flutter_course_bmi_calculator/reusable_card.dart';

class ResultsPage extends StatelessWidget {
  static String routeName = '/result';

  const ResultsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as CalculatorBrain;
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15),
                alignment: Alignment.bottomLeft,
                child: Text('Your Result', style: kTitleTextStyle),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(args.getResult(), style: kResultTextStyle),
                    Text(args.calculateBMI(), style: kBMITextStyle),
                    Text(
                      args.getInterpretation(),
                      style: kBMIBodyTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            BottomButton(
              labelTxt: 'RE-CALCULATE',
              onTapFn: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
