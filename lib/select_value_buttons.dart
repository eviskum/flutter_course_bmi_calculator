import 'package:flutter/material.dart';
import 'package:flutter_course_bmi_calculator/constants.dart';
import 'package:flutter_course_bmi_calculator/round_icon_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SelectValueButtons extends StatefulWidget {
  int value;
  String? title;
  String? unit;
  final void Function(int newValue)? onChanged;

  SelectValueButtons({required this.value, this.title, this.unit, this.onChanged, Key? key}) : super(key: key);

  @override
  _SelectValueButtonsState createState() => _SelectValueButtonsState();
}

class _SelectValueButtonsState extends State<SelectValueButtons> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(widget.title ?? '', style: kLabelStyle),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text('${widget.value}', style: kDataStyle),
            Text(widget.unit ?? ''),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            RoundIconButton(
                icon: FontAwesomeIcons.minus,
                onPressed: () {
                  setState(() {
                    widget.value--;
                  });
                  if (widget.onChanged != null) widget.onChanged!(widget.value);
                }),
            RoundIconButton(
                icon: FontAwesomeIcons.plus,
                onPressed: () {
                  setState(() {
                    widget.value++;
                  });
                  if (widget.onChanged != null) widget.onChanged!(widget.value);
                }),
            // FloatingActionButton(
            //     backgroundColor: Color(0xFF4C4F5E),
            //     child: Icon(
            //       Icons.air,
            //       color: Colors.white,
            //     ),
            //     onPressed: () {
            //       setState(() {
            //         weight++;
            //       });
            //     }),
          ],
        )
      ],
    );
  }
}
