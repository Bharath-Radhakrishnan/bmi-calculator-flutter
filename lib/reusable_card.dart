import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color containerColor;
  final Widget cardChild;
  ReusableCard({@required this.containerColor, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        margin: EdgeInsets.all(15.0),
        child: cardChild,
        decoration: BoxDecoration(
          color: containerColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
