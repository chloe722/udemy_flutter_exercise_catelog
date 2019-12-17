import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_exercise_catalog/bmi_calculator/constants.dart';

class SlideCardChild extends StatelessWidget {
  SlideCardChild({this.height, this.onChanged});

  final int height;
  final Function onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('HEIGHT', style: kLabelTextStyle),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: <Widget>[
            Text('$height', style: kNumberTextStyle),
            SizedBox(width: 4.0),
            Text('cm', style: kLabelTextStyle)
          ],
        ),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            thumbColor: kSliderActiveColour,
              activeTrackColor: Colors.white,
              inactiveTrackColor: kSliderInactiveColour,
              overlayColor: Color(0x29EB1555),
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
              overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0)),
          child: Slider(
              value: height.toDouble(),
              min: 120.0,
              max: 220.0,
              onChanged: onChanged),
        )
      ],
    );
  }
}
