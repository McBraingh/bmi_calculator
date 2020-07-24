import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.weight, this.height});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI(){
     _bmi = weight/pow(height/100, 2);
     return _bmi.toStringAsFixed(1);
  }

  String getResults(){
    if (_bmi >= 50){
      return 'OverWeigth';
    }else if (_bmi >= 18.5){
      return 'Normal';
    }else {
      return 'Underweight';
    }
  }

  String getInterpretation (){
    if (_bmi >= 50){
      return 'OverWeigth check your weight';
    }else if (_bmi >= 18.5){
      return 'Normal You are good to go';
    }else {
      return 'Underweight You have to eat more';
    }
  }
}