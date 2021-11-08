import 'package:flutter/material.dart';
import 'package:flutter_course_bmi_calculator/constants.dart';

class IconContent extends StatelessWidget {
  final IconData iconData;
  final String iconTxt;
  const IconContent(this.iconData, this.iconTxt, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(iconData, size: 80.0),
        SizedBox(height: 15),
        Text(iconTxt, style: kLabelStyle),
      ],
    );
  }
}
