import 'package:flutter/material.dart';

class BMICards extends StatelessWidget {
  final Color kolor;
  final Widget cardChild;
  BMICards({@required this.kolor, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: kolor,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}