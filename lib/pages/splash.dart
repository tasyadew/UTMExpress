import 'package:flutter/material.dart';
import 'package:utmexpress/shared/color.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: MyColor.maroon,
      body: Center(
          child: Text(
            'UTMExpress',
            style: TextStyle(
              fontSize: 48,
              fontFamily: 'Arial',
              color: MyColor.amber,
            ),
          ),
      ),
    );
  }
}
