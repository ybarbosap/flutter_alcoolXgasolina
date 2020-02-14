import 'package:alcool_gasolina/widgets/input.widget.dart';
import 'package:alcool_gasolina/widgets/load-button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class SubmitForm extends StatelessWidget {
  var gasCtrl = new MoneyMaskedTextController();
  var alcCtrl = new MoneyMaskedTextController();
  bool busy = false;
  Function func;

  SubmitForm(
      {@required this.gasCtrl,
      @required this.alcCtrl,
      @required this.busy,
      @required this.func});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 30, right: 30),
          child: Input(
            ctrl: gasCtrl,
            label: 'Gasolina',
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 30, right: 30),
          child: Input(
            ctrl: alcCtrl,
            label: 'Etanol',
          ),
        ),
        LoadingButton(
          text: 'Calcular',
          busy: busy,
          invert: false,
          func: func,
        ),
      ],
    );
  }
}
