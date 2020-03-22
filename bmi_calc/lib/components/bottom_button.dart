import 'package:bmicalc/constants.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final Function onTap;
  final String text;
  BottomButton({@required this.text, @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          child: Center(
              child: Text(
            text,
            style: kButtonTextStyle,
          )),
          height: kBottomContainerHeight,
          color: kBottomContainerColor,
          width: double.infinity,
        ));
  }
}
