import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;

  CalculatorBrain({required this.height, required this.weight});

  double get bmi => weight / pow(height / 100, 2);

  String calculateBMI() {
    // double bmi = weight / pow(height / 100, 2);
    return bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (bmi >= 25) return 'Overweight';
    if (bmi >= 18.5) return 'Normal';
    return 'Underweight';
  }

  String getInterpretation() {
    if (bmi >= 25) return 'You have a higher than normal body weight. Try to exercise more.';
    if (bmi >= 18.5) return 'You have a normal body weight. Good job!';
    return 'You have a lower than normal body weight. You can eat a bit more.';
  }
}
