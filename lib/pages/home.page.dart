import 'package:alcool_gasolina/widgets/logo.widget.dart';
import 'package:alcool_gasolina/widgets/submit-form.dart';
import 'package:alcool_gasolina/widgets/sucsses.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color _color = Colors.deepPurple;
  var _gasCtrl = new MoneyMaskedTextController(precision: 3);
  var _etCtrl = new MoneyMaskedTextController(precision: 3);
  var _busy = false;
  var _completed = false;
  var _resultText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: AnimatedContainer(
          duration: Duration(milliseconds: 1200),
          color: _color,
          child: ListView(
            children: <Widget>[
              Logo(),
              SizedBox(
                height: 25,
              ),
              _completed
                  ? Success(
                      result: _resultText,
                      reset: reset,
                    )
                  : SubmitForm(
                      alcCtrl: _etCtrl,
                      gasCtrl: _gasCtrl,
                      func: calculate,
                      busy: _busy,
                    ),
            ],
          ),
        ));
  }

  Future calculate() {
    if (_etCtrl.text != '0,000' && _gasCtrl.text != '0,000') {
      double alc =
          double.parse(_etCtrl.text.replaceAll(RegExp(r'[,.]'), '')) / 100;
      double gas =
          double.parse(_gasCtrl.text.replaceAll(RegExp(r'[,.]'), '')) / 100;

      double res = alc / gas;

      setState(() {
        _completed = false;
        _busy = true;
        _color = Colors.deepPurpleAccent;
      });

      return Future.delayed(const Duration(seconds: 2), () {
        setState(() {
          if (res > 0.7) {
            _resultText = 'Melhor usar Gasolina';
          } else {
            _resultText = 'Melhor usar Etanol';
          }
          _completed = true;
        });
      });
    }
  }

  void reset() {
    setState(() {
      _completed = false;
      _busy = false;
      _etCtrl = new MoneyMaskedTextController(precision: 3);
      _gasCtrl = new MoneyMaskedTextController(precision: 3);
      _color = Colors.deepPurple;
    });
  }
}
