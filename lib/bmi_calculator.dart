import 'dart:math';

class BMICalculator {
  final int height;
  final int weight;
  double _bmi = 0.0;

  BMICalculator(this.height, this.weight);

  String calculateBMI() {
    _bmi = weight / pow((height / 100), 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi < 18.5) {
      return 'UNDER WEIGHT';
    } else if (_bmi >= 18.5 && _bmi <= 24.9) {
      return 'HEALTHY WEIGHT';
    } else if (_bmi >= 25 && _bmi <= 29.9) {
      return 'OVER WEIGHT';
    } else {
      return 'OBESE';
    }
  }
}
