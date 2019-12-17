import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.colour, this.cardChild, @required this.onTap});

  final Color colour;
  final Widget cardChild;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(child: cardChild),
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: colour,
        ),
      ),
    );
  }
}
