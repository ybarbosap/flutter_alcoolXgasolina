import 'package:alcool_gasolina/widgets/load-button.dart';
import 'package:flutter/material.dart';

class Success extends StatelessWidget {
  String result;
  Function reset;

  Success({@required this.reset, @required this.result});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.8),
          borderRadius: BorderRadius.circular(25)),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          Text(
            result,
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 40,
              fontFamily: 'Big shoulders Display',
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 30,
          ),
          LoadingButton(
            text: 'Refazer',
            busy: false,
            invert: true,
            func: reset,
          )
        ],
      ),
    );
  }
}
