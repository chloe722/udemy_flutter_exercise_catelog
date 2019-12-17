import 'package:flutter/material.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.label, @required this.onPressed});

  final String label;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        color: kBottomContainerColour,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        padding: EdgeInsets.only(bottom: 20.0),
        child: Center(child: Text(label, style: kLargeButtonTextStyle)),
      ),
    );

  }
}

