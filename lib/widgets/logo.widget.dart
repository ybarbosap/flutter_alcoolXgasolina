import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 60,
        ),
        Image.asset(
          'assets/images/aog-white.png',
          height: 80,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Alcool ou Gasolina',
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'Big shoulders Display',
              fontSize: 25),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
