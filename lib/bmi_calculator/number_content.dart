import 'package:flutter/material.dart';
import 'package:flutter_exercise_catalog/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NumberContent extends StatelessWidget {
  NumberContent({this.label, this.number, this.setNumber});

  final String label;
  final int number;
  final Function(int number) setNumber;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
      Text(label, style: kLabelTextStyle),
        Text(number.toString(), style: kNumberTextStyle),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            RoundIconButton(icon: FontAwesomeIcons.minus, onPressed: (){setNumber(number -1);}),
            RoundIconButton(icon: FontAwesomeIcons.plus, onPressed: (){setNumber(number +1);}),
          ],
        )

      ],
    );
  }
}


class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.icon, this.onPressed});

  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      child: Icon(icon, color: Colors.white,),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      elevation: 5.0,
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }

}
