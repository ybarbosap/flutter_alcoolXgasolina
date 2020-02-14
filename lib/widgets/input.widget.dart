import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class Input extends StatelessWidget {
  var label = '';
  var ctrl = new MoneyMaskedTextController();

  Input({@required this.label, @required this.ctrl});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: 100,
          alignment: Alignment.center,
          child: Text(
            label,
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontFamily: 'Big shoulders Display',
            ),
          ),
        ),
        Expanded(
          child: TextFormField(
            controller: ctrl,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
            style: TextStyle(
              color: Colors.white,
              fontSize: 45,
              fontFamily: 'Big shoulders Display',
            ),
          ),
        )
      ],
    );
  }
}
