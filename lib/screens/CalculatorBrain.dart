import 'dart:math';
import '../assets/constants.dart';

class CalculatorBrain {
  final int? height;
  final int? weight;

  double? _bmi;

  CalculatorBrain({this.height, this.weight});

  String calculateBMI() {
    _bmi = (weight! / pow(height! / 100, 2));

    return _bmi!.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi! >= 18.5 && _bmi! <= 22.9) {
      return "Healthy weight";
    } else if (_bmi! >= 23) {
      return "Overweight";
    } else {
      return "Underweight";
    }
  }

  String getInerpretation() {
    if (_bmi! >= 18.5 && _bmi! <= 22.9) {
      return " You have a normal weight. ";
    } else if (_bmi! >= 23) {
      return " You have a higher than normal body weight. Try to exercise more. ";
    } else {
      return " You have a lower than normal body weight. You can eat a bit more. ";
    }
  }

  List getTips() {
    if (_bmi! >= 18.5 && _bmi! <= 22.9) {
      return [
        "Good",
        "job",
        "!",
        kBodyTextStyle,
      ];
    } else if (_bmi! >= 23) {
      double _newbmi = _bmi! - 23;
      double _newWeight = (_newbmi * pow(height! / 100, 2));
      return [
        "💡 Tips: Try to loose ",
        _newWeight.toStringAsFixed(2),
        " kg",
        kOverWeightTextStyle
      ];
    } else {
      double _newbmi = 18.5 - _bmi!;
      double _newWeight = (_newbmi * pow(height! / 100, 2));
      return [
        "💡 Tips: Try to gain ",
        _newWeight.toStringAsFixed(2),
        " kg",
        kUnderrWeightTextStyle
      ];
    }
  }
}
