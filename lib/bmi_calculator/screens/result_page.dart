import 'package:flutter/material.dart';
import 'package:flutter_exercise_catalog/bmi_calculator/calculator_brain.dart';
import 'package:flutter_exercise_catalog/bmi_calculator/widgets/bottom_button.dart';
import 'package:flutter_exercise_catalog/bmi_calculator/widgets/result_content.dart';
import 'package:flutter_exercise_catalog/bmi_calculator/widgets/reusable_card.dart';

import '../constants.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({@required this.bmiResult, @required this.resultText, @required this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                  margin: EdgeInsets.all(15.0),
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Your Result',
                    style: kTitleTextStyle,
                  )),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kActiveCardColour,
                cardChild: ResultContent(bmiResult: bmiResult, resultText: resultText, interpretation: interpretation,),
              ),
            ),
            BottomButton(
              label: 'RE-CALCULATE',
              onPressed: () => Navigator.pop(context),
            ),
          ],
        ));
  }
}
