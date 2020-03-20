import 'dart:math';

class Calculator {
  Calculator({this.height, this.weight});
  final int height;
  final int weight;

  double _score;

  String bmiScore() {
    _score = weight / pow(height / 100, 2);
    return _score.toStringAsFixed(1);
  }

  String bmiText() {
    if (_score >= 25) {
      return 'Overweight';
    } else if (_score > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String bmiInterpretation() {
    if (_score >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_score > 18.5) {
      return 'You have a normal body weight. Well done!';
    } else {
      return 'You have a lower than normal body weight. You should increase your food intake.';
    }
  }
}
