import 'package:flutter/material.dart';

import '../constants.dart';

class BottomButton extends StatelessWidget {
  final Function onPress;
  final String buttonText;

  BottomButton({this.buttonText, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        padding: EdgeInsets.all(10.0),
        height: 50.0,
        width: double.infinity,
        color: Colors.pink,
        child: Text(
          buttonText,
          textAlign: TextAlign.center,
          style: kLargeButtonTextStyle,
        ),
      ),
    );
  }
}
