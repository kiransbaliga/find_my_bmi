import 'dart:math';
class CalculatorBrain{
  CalculatorBrain({this.weight,this.height});
  final int weight;
  final int height;
  double _bmi;
  String Calculate(){
    _bmi = weight / pow(height/100,2);
    return _bmi.toStringAsFixed(1);
  }
  String getResult(){
    if (_bmi >=25  )
      return 'OverWeight';
    else if(_bmi>18.5)
      return "Normal";
    else
      return 'Underweight';
  }
  String getComment(){
    if (_bmi >=25  )
      return 'Your weight is Higher than normal , Try exercising more !!';
    else if(_bmi>18.5)
      return "Yuu are Healthy Great job";
    else
      return 'You have to eat something!!';
  }
}