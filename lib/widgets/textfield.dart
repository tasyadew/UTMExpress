import 'package:flutter/material.dart';

import '../shared/color.dart';

class TextFieldWidget extends StatelessWidget {
  final String hintText;
  final IconData prefixIconData;
  final IconData suffixIconData;
  final bool obscureText;
  //final Function onChanged;

  TextFieldWidget({
    required this.hintText,
    required this.prefixIconData,
    required this.suffixIconData,
    required this.obscureText,
    //required this.onChanged,
});

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      cursorColor: MyColor.maroon[700],
      style: TextStyle(
        color: MyColor.maroon[800],
        fontSize: 16,
        fontWeight: FontWeight.bold,
        fontFamily: 'DMSans',
      ),
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide(color: (MyColor.maroon[700]!))
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color: (MyColor.maroon[700]!))
        ),
        hintText: hintText,
        prefixIcon: Icon(
          prefixIconData,
          size: 24,
          color: MyColor.maroon[700],
        ),
        suffixIcon: Icon(
          suffixIconData,
          size: 24,
          color: MyColor.maroon[700],
        ),
      ),
    );
  }
}
