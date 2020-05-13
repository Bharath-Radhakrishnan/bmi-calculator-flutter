import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'reusable_icon.dart';

const bottomContainerHeight = 80.0;
const bottomContainerColor = Color(0xFFEB1555);
const activeCardColor = Color(0xFF1D1E33);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                ReusableCard(
                  containerColor: activeCardColor,
                  cardChild: ReusableIcon(
                    icon: FontAwesomeIcons.mars,
                    label: 'MALE',
                  ),
                ),
                ReusableCard(
                  containerColor: activeCardColor,
                  cardChild: ReusableIcon(
                    icon: FontAwesomeIcons.venus,
                    label: 'FEMALE',
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                ReusableCard(containerColor: activeCardColor),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                ReusableCard(containerColor: activeCardColor),
                ReusableCard(containerColor: activeCardColor),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: bottomContainerHeight,
            color: bottomContainerColor,
          )
        ],
      ),
    );
  }
}
