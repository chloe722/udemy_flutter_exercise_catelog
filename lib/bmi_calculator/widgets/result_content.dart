import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_exercise_catalog/bmi_calculator/constants.dart';

class ResultContent extends StatelessWidget {
  ResultContent({@required this.bmiResult, @required this.resultText, @required this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text(resultText, style: kResultTextStyle),
        Text(bmiResult, style: kBMITextStyle),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('Normal BMI range:', style: kBodyTextStyle),
            Text('18.5 - 25 kg/m2', style: kBodyTextStyle),
          ],
        ),
        Text(interpretation, textAlign: TextAlign.center, style: kBodyTextStyle),

        RaisedButton(
          onPressed: (){print('save result');},
          padding: EdgeInsets.all(24.0),
          child: Text('SAVE RESULT', style: TextStyle(color: Colors.white),),
          color: kInactiveCardColour,
        )
      ],
    );
  }
}
