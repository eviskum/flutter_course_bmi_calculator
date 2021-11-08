import 'package:flutter/material.dart';
import 'package:flutter_course_bmi_calculator/bottom_button.dart';
import 'package:flutter_course_bmi_calculator/calculator_brain.dart';
import 'package:flutter_course_bmi_calculator/constants.dart';
import 'package:flutter_course_bmi_calculator/icon_content.dart';
import 'package:flutter_course_bmi_calculator/results_page.dart';
import 'package:flutter_course_bmi_calculator/reusable_card.dart';
// import 'package:flutter_course_bmi_calculator/round_icon_button.dart';
import 'package:flutter_course_bmi_calculator/select_value_buttons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum SexSelect { none, male, female }

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  SexSelect sexSelect = SexSelect.none;
  int height = 180;
  int weight = 80;
  int age = 25;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            GenderSelector(),
            HeightSelector(),
            WeightAgeSelector(),
            BottomButton(
              labelTxt: 'CALCULATE',
              onTapFn: () {
                // CalculatorBrain calculatorBrain = CalculatorBrain(height: height, weight: weight);
                Navigator.of(context)
                    .pushNamed(ResultsPage.routeName, arguments: CalculatorBrain(height: height, weight: weight));
              },
            ),
          ],
        ),
      ),
    );
  }

  Expanded WeightAgeSelector() {
    return Expanded(
      child: Row(
        children: [
          Expanded(
            child: ReusableCard(
              child: SelectValueButtons(
                value: weight,
                title: 'WEIGHT',
                unit: 'kg',
                onChanged: (value) {
                  weight = value;
                },
              ),
            ),
          ),
          Expanded(
            child: ReusableCard(
              child: SelectValueButtons(
                value: age,
                title: 'AGE',
                unit: 'ys',
                onChanged: (value) {
                  age = value;
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Expanded HeightSelector() {
    return Expanded(
      child: ReusableCard(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('HEIGHT', style: kLabelStyle),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text('$height', style: kDataStyle),
                Text('cm'),
              ],
            ),
            Slider.adaptive(
                value: height.toDouble(),
                min: 120.0,
                max: 220.0,
                activeColor: Color(0xFFEB1555),
                inactiveColor: Color(0xFF8D8E98),
                thumbColor: Color(0xFFEB1555),
                onChanged: (value) {
                  setState(() {
                    height = value.round();
                  });
                }),
          ],
        ),
      ),
    );
  }

  Expanded GenderSelector() {
    return Expanded(
      child: Row(
        children: [
          Expanded(
            child: ReusableCard(
              cardSelected: sexSelect == SexSelect.male,
              child: IconContent(FontAwesomeIcons.mars, 'MALE'),
              onTapFn: () {
                setState(() {
                  sexSelect = SexSelect.male;
                });
              },
            ),
          ),
          Expanded(
            child: ReusableCard(
              cardSelected: sexSelect == SexSelect.female,
              child: IconContent(FontAwesomeIcons.venus, 'FEMALE'),
              onTapFn: () {
                setState(() {
                  sexSelect = SexSelect.female;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
