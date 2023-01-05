import 'package:flutter/material.dart';

import 'custom_text.dart';

class ButtonWidget extends StatelessWidget {

  final String text;
  final Color textColor;
  final Color backgroundColor;
  final double boxWidth;
  final double boxHeight;
  final double fontSize = 16;
  final void Function() onPressed;

  const ButtonWidget({Key? key,
    required this.text,
    required this.textColor,
    required this.backgroundColor,
    required this.boxWidth,
    required this.boxHeight,
    required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: boxWidth,
      height: boxHeight,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          elevation: 5,
          padding: const EdgeInsets.all(10.0),
        ),
        onPressed: onPressed,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
