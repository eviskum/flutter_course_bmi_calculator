import 'package:flutter/material.dart';
import 'package:flutter_course_bmi_calculator/results_page.dart';
import 'package:flutter_course_bmi_calculator/reusable_card.dart';

class BottomButton extends StatelessWidget {
  final String labelTxt;
  final void Function()? onTapFn;

  const BottomButton({required this.labelTxt, this.onTapFn, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ReusableCard(
      isBottomCard: true,
      onTapFn: () {
        if (onTapFn != null) onTapFn!();
      },
      child: Center(
        child: Text(labelTxt, style: TextStyle(fontSize: 24.0, color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
