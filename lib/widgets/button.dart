import 'package:flutter/material.dart';

class ButtonWidget extends StatefulWidget {
  Function() onPressed = (){};
  String buttonText = "";
  Color backgroundColor = Colors.white;
  Color foregroundColor = Colors.white;
  Color shadowColor = Colors.white;
  double buttonHeight = 60.0;

  ButtonWidget(
      {Key? key,
        required this.buttonText,
        required this.backgroundColor,
        required this.foregroundColor,
        required this.shadowColor,
        required this.onPressed,
        required this.buttonHeight
      }) : super(key: key);

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState(buttonText: buttonText, backgroundColor: backgroundColor, foregroundColor: foregroundColor, shadowColor: shadowColor, onPressed: onPressed, buttonHeight: buttonHeight);
}

class _ButtonWidgetState extends State<ButtonWidget> {
  bool _isPressed = false;

  Function() onPressed = (){};
  String buttonText = "";
  Color backgroundColor = Colors.white;
  Color foregroundColor = Colors.white;
  Color shadowColor = Colors.white;
  double buttonHeight = 60.0;

  _ButtonWidgetState(
      {
        required this.buttonText,
        required this.backgroundColor,
        required this.foregroundColor,
        required this.shadowColor,
        required this.onPressed,
        required this.buttonHeight
      });

  void buttonPressed() async {
    setState(() { _isPressed = true; });
    await Future.delayed(Duration(milliseconds: 100));
    setState(() { _isPressed = false; });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: buttonHeight,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          color: const Color(0x00000000),
          boxShadow:  [
            BoxShadow(
              color: shadowColor,
              blurRadius: 0.0,
              spreadRadius: 0.0,
              offset: Offset.fromDirection(0.785, 10.0),
            )
          ],
        ),
        child: AnimatedContainer(
          duration: Duration(milliseconds: 50),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25.0),
            color: const Color(0x00000000),
            boxShadow:  [
              BoxShadow(
                color: backgroundColor,
                blurRadius: 0.0,
                spreadRadius: 0.0,
                offset: _isPressed ? Offset.fromDirection(0.785, 10.0) : Offset.fromDirection(0.785, 0.0),
              )
            ],
          ),
          child: AnimatedPadding(
            duration: Duration(milliseconds: 50),
            padding: EdgeInsets.only(left: _isPressed ? 9.0 : 0.0, top: _isPressed ? 9.0 : 0.0),
            child: TextButton(
              onPressed: () {
                buttonPressed();
                onPressed;
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.transparent,
                foregroundColor: foregroundColor,
                splashFactory: NoSplash.splashFactory,
                textStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'DMSans'
                ),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
              ),
              child: Text(buttonText),
            ),
          ),
        ),
      ),
    );
  }
}