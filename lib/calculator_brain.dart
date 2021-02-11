import 'dart:math';

class CalculatorBrain {
  final double height;
  final double weight;

  CalculatorBrain({this.height, this.weight});

  double _bmi;
  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResults() {
    if (_bmi > 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi > 25) {
      return 'You have higher body weight. Try to move a little more than usual.';
    } else if (_bmi > 18.5) {
      return 'You are at your best.';
    } else {
      return 'Bro, eat something, else the wind will take you away.';
    }
  }
}
