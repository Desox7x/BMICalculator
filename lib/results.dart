import 'package:bmi_calculator/input_page.dart';
import 'package:flutter/material.dart';
import 'bmi_cards.dart';
import 'bottom_button.dart';

class Results extends StatelessWidget {
  Results({@required this.imcResults, @required this.resultText, @required this.advice});
  final String imcResults;
  final String resultText;
  final String advice;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora IMC'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Center(
              child: Container(
                margin: EdgeInsets.all(15.0),
                child: Text(
                  'Resultados',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: BMICards(
              kolor: pressedcardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText,
                    style: TextStyle(
                      color: Color(0xFF24D876),
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    imcResults,
                    style: TextStyle(
                      fontSize: 100.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    advice,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle: 'CALCULAR DE NUEVO',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
