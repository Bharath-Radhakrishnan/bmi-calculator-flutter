import 'package:flutter/material.dart';

const iconSize = 80.0;
const labelTextStyle = TextStyle(
  fontSize: 20.0,
);
const sizedBoxHeight = 15.0;

class ReusableIcon extends StatelessWidget {
  final IconData icon;
  final String label;
  const ReusableIcon({this.icon, this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: iconSize,
        ),
        SizedBox(
          height: sizedBoxHeight,
        ),
        Text(
          label,
          style: labelTextStyle,
        ),
      ],
    );
  }
}
