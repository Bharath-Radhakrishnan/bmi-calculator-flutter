import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'reusable_icon.dart';

const bottomContainerHeight = 80.0;
const bottomContainerColor = Color(0xFFEB1555);
const activeCardColor = Color(0xFF1D1E33);
const inActiveCardColor = Color(0xFF1111328);

enum gender { Male, Female }
gender selectedGender;

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
                        selectedGender = gender.Male;
                      });
                    },
                    child: ReusableCard(
                      containerColor: (selectedGender == gender.Male
                          ? activeCardColor
                          : inActiveCardColor),
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
                        selectedGender = gender.Female;
                      });
                    },
                    child: ReusableCard(
                      containerColor: (selectedGender == gender.Female
                          ? activeCardColor
                          : inActiveCardColor),
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
