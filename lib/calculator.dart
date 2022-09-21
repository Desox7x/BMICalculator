import 'dart:math';

class Calculator {

  Calculator({this.altura, this.peso}){
    _imc = double.parse(calcularIMC());
  }
  final double altura;
  final int peso;
  double _imc;

  String calcularIMC(){
    double _imc = (peso / 2.205) / pow(altura/3.281, 2);
    return _imc.toStringAsFixed(1);
  }

  String getResult(){
    if (_imc >= 25.0){
      return 'Sobrepeso';
    }else if(_imc > 18.5){
      return 'Normal';
    }else{
      return 'Anorexico';
    }
  }

  String getAdvice(){
    if (_imc >= 25){
      return 'Tienes un peso por encima de lo normal. Intenta ejercitar y comer mas saludable.';
    }else if(_imc > 18.5){
      return 'Tienes un peso normal. Buen trabajo!';
    }else{
      return 'Tu peso esta muy bajo. Intenta comer mas.';
    }
  }
}