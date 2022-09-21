import 'package:flutter/material.dart';

class CardContent extends StatelessWidget {
  final IconData icono;
  final String texto;

  CardContent({@required this.icono, this.texto});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icono,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          texto,
          style: TextStyle(
            fontSize: 18.0,
            color: Color(0xFF8D8E98),
          ),
        ),
      ],
    );
  }
}