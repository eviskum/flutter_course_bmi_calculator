import 'package:flutter/material.dart';
import 'package:flutter_course_bmi_calculator/constants.dart';

class ReusableCard extends StatelessWidget {
  final bool cardSelected;
  final bool isBottomCard;
  final Widget? child;
  final Function? onTapFn;

  const ReusableCard({this.cardSelected = true, this.isBottomCard = false, this.child, this.onTapFn, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapFn == null
          ? null
          : () {
              onTapFn!();
            },
      child: Container(
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: isBottomCard
                ? kBottomContainerColour
                : cardSelected
                    ? kActiveCardColour
                    : kInactiveCardColour),
        height: isBottomCard ? kBottomContainerHeight : null,
        child: child,
      ),
    );
  }
}
