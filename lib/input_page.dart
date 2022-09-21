import 'package:bmi_calculator/results.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'bmi_cards.dart';
import 'card_content.dart';
import 'bottom_button.dart';
import 'calculator.dart';

const pressedcardColor = Color(0xFF3A506B);
const cardColor = Color(0xFF232F54);

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  // Color maleColor = pressedcardColor;
  // Color femaleColor = pressedcardColor;

  Gender gender;
  int peso = 140;
  double altura = 5.9;
  int edad = 18;

  // void updateColor(Gender gender) {
  //   if (gender == Gender.male) {
  //     if (maleColor == cardColor) {
  //       maleColor = pressedcardColor;
  //       femaleColor = cardColor;
  //     } else {
  //       maleColor = cardColor;
  //       femaleColor = pressedcardColor;
  //     }
  //   }
  //   if (gender == Gender.female) {
  //     if (femaleColor == cardColor) {
  //       femaleColor = pressedcardColor;
  //       maleColor = cardColor;
  //     } else {
  //       femaleColor = cardColor;
  //       maleColor = pressedcardColor;
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora IMC'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        gender = Gender.male;
                      });
                    },
                    child: BMICards(
                      kolor:
                          gender == Gender.male ? pressedcardColor : cardColor,
                      cardChild: CardContent(
                          icono: FontAwesomeIcons.mars, texto: 'Hombre'),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        gender = Gender.female;
                      });
                    },
                    child: BMICards(
                      kolor: gender == Gender.female
                          ? pressedcardColor
                          : cardColor,
                      cardChild: CardContent(
                        icono: FontAwesomeIcons.venus,
                        texto: 'Mujer',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: BMICards(
                    kolor: pressedcardColor,
                    cardChild: Column(
                      children: <Widget>[
                        Text(
                          'Peso',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Color(0xFF8D8E98),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: <Widget>[
                            Text(
                              peso.toString(),
                              style: TextStyle(
                                fontSize: 50.0,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            Text(
                              'lbs',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Color(0xFF8D8E98),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  if (peso >= 51) {
                                    peso--;
                                  }
                                });
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  if (peso <= 299) {
                                    peso++;
                                  }
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: BMICards(
                    kolor: pressedcardColor,
                    cardChild: Column(
                      children: <Widget>[
                        Text(
                          'Edad',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Color(0xFF8D8E98),
                          ),
                        ),
                        Text(
                          edad.toString(),
                          style: TextStyle(
                            fontSize: 50.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  if (edad >= 6) {
                                    edad--;
                                  }
                                });
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                setState(() {
                                  if (edad <= 79) {
                                    edad++;
                                  }
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: BMICards(
              kolor: pressedcardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Altura',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Color(0xFF8D8E98),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        altura.toString(),
                        style: TextStyle(
                          fontSize: 50.0,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Text(
                        'ft',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Color(0xFF8D8E98),
                        ),
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      inactiveTrackColor: Color(0xFF8D8E98),
                      activeTrackColor: Colors.white,
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 30.0),
                      thumbColor: Color(0xFF007BBA),
                      overlayColor: Color(0x20007BBA),
                    ),
                    child: Slider(
                      value: altura.toDouble(),
                      min: 4.0,
                      max: 7.0,
                      onChanged: (newValue) {
                        setState(() {
                          altura = double.tryParse(newValue.toStringAsFixed(1));
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle: 'CALCULAR',
            onTap: () {

              Calculator calculator = Calculator(altura: altura, peso: peso);

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Results(
                    imcResults: calculator.calcularIMC(),
                    resultText: calculator.getResult(),
                    advice: calculator.getAdvice(),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}



class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPressed;
  RoundIconButton({@required this.icon, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      child: Icon(
        icon,
        size: 17,
      ),
      elevation: 1.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xAF8D8E98),
    );
  }
}
