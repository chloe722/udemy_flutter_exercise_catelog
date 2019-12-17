import 'package:flutter/material.dart';
import 'package:flutter_exercise_catalog/bmi_calculator/reusable_card.dart';
import 'package:flutter_exercise_catalog/bmi_calculator/slider_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants.dart';
import 'icon_content.dart';
import 'number_content.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height = 180;
  int weight = 50;
  int age = 20;

  void selectingGender(Gender selectedGenderVal) {
    setState(() {
      selectedGender = selectedGenderVal;
    });
  }

  void setHeight(double heightVal) {
    setState(() {
      height = heightVal.round();
      print('new height: $height');
    });
  }

  void setWeight(int weightVal) {
    setState(() {
      weight = weightVal;
      print('new weight: $weight');
    });
  }

  void setAge(int ageVal) {
    setState(() {
      age = ageVal;
      print('new age: $age');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: ReusableCard(
                    colour: selectedGender == Gender.male
                        ? kActiveCardColour
                        : kInactiveCardColour,
                    cardChild:
                        IconContent(label: 'MALE', icon: FontAwesomeIcons.mars),
                    onTap: () => selectingGender(Gender.male),
                  )),
                  Expanded(
                      child: ReusableCard(
                    colour: selectedGender == Gender.female
                        ? kActiveCardColour
                        : kInactiveCardColour,
                    cardChild: IconContent(
                        label: 'FEMALE', icon: FontAwesomeIcons.venus),
                    onTap: () => selectingGender(Gender.female),
                  )),
                ],
              ),
            ),
            Expanded(
                child: ReusableCard(
              colour: kActiveCardColour,
              cardChild: SlideCardChild(
                height: height,
                onChanged: setHeight
              ),
            )),
            Expanded(
              flex: 1,
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: ReusableCard(
                    colour: kActiveCardColour,
                    cardChild: NumberContent(
                      label: 'WEIGHT',
                      number: weight,
                      setNumber: setWeight,
                    ),
                  )),
                  Expanded(
                      child: ReusableCard(
                    colour: kActiveCardColour,
                    cardChild: NumberContent(
                      label: 'AGE',
                      number: age,
                      setNumber: setAge,
                    ),
                  )),
                ],
              ),
            ),
            Container(
              color: kBottomContainerColour,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: kBottomContainerHeight,
            )
          ],
        ));
  }
}
