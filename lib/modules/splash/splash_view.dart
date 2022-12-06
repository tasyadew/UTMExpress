import 'package:flutter/material.dart';

import '../../shared/color.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.maroon[400],
      body: SafeArea(
        child: Center(
          child: Text(
            'UTMExpress',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 48,
              fontFamily: 'DMSans',
              color: MyColor.amber[100],
            ),
          ),
        ),
      ),
    );
  }
}
