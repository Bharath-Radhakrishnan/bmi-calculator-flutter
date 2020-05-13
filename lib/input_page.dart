import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'reusable_icon.dart';

const bottomContainerHeight = 80.0;
const bottomContainerColor = Color(0xFFEB1555);
const activeCardColor = Color(0xFF1D1E33);
const inActiveCardColor = Colors.red;
Color maleCardColor = inActiveCardColor;
Color femaleCardColor = inActiveCardColor;
enum gender { Male, Female }
void updateColor(gender g) {
  if (g == gender.Male) {
    maleCardColor = activeCardColor;
    femaleCardColor = inActiveCardColor;
  } else if (g == gender.Female) {
    femaleCardColor = activeCardColor;
    maleCardColor = inActiveCardColor;
  }
}

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
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        print('Male');
                        updateColor(gender.Male);
                      });
                    },
                    child: ReusableCard(
                      containerColor: maleCardColor,
                      cardChild: ReusableIcon(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        print('Female');
                        updateColor(gender.Female);
                      });
                    },
                    child: ReusableCard(
                      containerColor: femaleCardColor,
                      cardChild: ReusableIcon(
                        icon: FontAwesomeIcons.venus,
                        label: 'FEMALE',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(child: ReusableCard(containerColor: activeCardColor)),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(child: ReusableCard(containerColor: activeCardColor)),
                Expanded(child: ReusableCard(containerColor: activeCardColor)),
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
