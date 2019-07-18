import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class BottomButton extends StatelessWidget {
  final String title;
  final Function onTap;

  BottomButton({@required this.title, @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Container(
          child: Center(
            child: Text(
              title,
              style: kLargeButtonTextStyle,
            ),
          ),
          color: kBottomContainerColor,
          width: double.infinity,
          height: kBottomContainerHeight,
          margin: EdgeInsets.only(top: 10.0),
          padding: EdgeInsets.only(bottom: 20.0),
        ),
        onTap: onTap);
  }
}
