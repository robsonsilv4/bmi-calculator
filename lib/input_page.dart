import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content.dart';
import 'reusable_card.dart';
import 'constants.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height = 179;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      color: selectedGender == Gender.male
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      child: IconContent(
                        icon: FontAwesomeIcons.mars,
                        text: 'MALE',
                      ),
                      onTap: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      color: selectedGender == Gender.female
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      child: IconContent(
                        icon: FontAwesomeIcons.venus,
                        text: 'FEMALE',
                      ),
                      onTap: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                color: kActiveCardColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'HEIGHT',
                      style: kTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      children: <Widget>[
                        Text(
                          height.toString(),
                          style: kNumberTextStyle,
                        ),
                        Text(
                          'cm',
                          style: kTextStyle,
                        ),
                        Slider(
                          value: height.toDouble(),
                          min: 120.0,
                          max: 220.0,
                          activeColor: Color(0xFFEB1555),
                          inactiveColor: Color(0xFF8D8E98),
                          onChanged: (double newValue) {
                            setState(() {
                              height = newValue.round();
                            });
                          },
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      color: kActiveCardColor,
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      color: kActiveCardColor,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: kBottomContainerColor,
              width: double.infinity,
              height: kBottomContainerHeight,
              margin: EdgeInsets.only(top: 10.0),
            )
          ],
        ));
  }
}
