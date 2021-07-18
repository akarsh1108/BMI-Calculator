import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Calculator {
  Calculator({@required this.height, @required this.weight});
  final int height;
  final int weight;
  double _bmi;
  String calculatebmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getresult() {
    if (_bmi > 30) {
      return 'Obese';
    } else if (_bmi >= 25 && _bmi <= 30) {
      return 'Overweight';
    } else if (_bmi >= 18.5 && _bmi < 25) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getinterpretaion() {
    if (_bmi > 30) {
      return 'You have a higher than overweight try to mantain good diet and excercise more';
    } else if (_bmi >= 25 && _bmi <= 30) {
      return 'You have a higher than normal body weight, Try to excercise more.';
    } else if (_bmi >= 18.5 && _bmi < 25) {
      return 'You have a normal body weight ,Good Job!';
    } else {
      return 'You have a lower than normal body weight ,You can eat a bit more ';
    }
  }
}
