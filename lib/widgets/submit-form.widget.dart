import 'package:balta_alcool_gasolina/widgets/input.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

import 'loading-button.widget.dart';

class SubmitForm extends StatelessWidget {
  var gasolinaControler = new MoneyMaskedTextController();
  var alcoolControler = new MoneyMaskedTextController();
  var busy = false;
  Function submitFunc;

  SubmitForm({
    @required this.gasolinaControler,
    @required this.alcoolControler,
    @required this.busy,
    @required this.submitFunc,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(
            left: 30,
            right: 30,
          ),
          child: Input(
            ctrl: this.gasolinaControler,
            label: "Gasolina",
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 30,
            right: 30,
          ),
          child: Input(
            ctrl: this.alcoolControler,
            label: "Álcool",
          ),
        ),
        SizedBox(
          height: 25,
        ),
        LoadingButton(
          busy: busy,
          func: submitFunc,
          text: "CALCULAR",
          invert: false,
        )
      ],
    );
  }
}
