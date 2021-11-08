import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final void Function()? onPressed;
  final IconData? icon;

  const RoundIconButton({required this.onPressed, this.icon, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: const CircleBorder(),
      fillColor: const Color(0xFF4C4F5E),
      constraints: const BoxConstraints.tightFor(width: 56.0, height: 56.0),
      elevation: 0.0,
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
