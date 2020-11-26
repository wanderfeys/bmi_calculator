import 'dart:math';

import 'package:flutter/material.dart';

class CalculateBMI {
  CalculateBMI({@required this.height, @required this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String goResult() {
    if (_bmi >= 25) {
      return "Overweight";
    } else if (_bmi > 18.5) {
      return "Normal";
    } else
      return 'Underweight';
  }

  String goInterpretetion() {
    if (_bmi >= 25) {
      return "You have a higer than normal body weight. It/'s since you neew more movement in  you live";
    } else if (_bmi > 18.5) {
      return "You body weight is perfect. Keep it";
    } else
      return 'I can admit you need more food) eat more and you be okay)';
  }
}
