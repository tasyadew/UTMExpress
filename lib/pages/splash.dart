import 'package:flutter/material.dart';
import 'package:utmexpress/shared/color.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.maroon[400],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget> [
            Expanded(
              child: Stack(
                alignment: Alignment.center,
                children: <Widget> [
                  Positioned(
                      top: 285,
                      child: Text(
                        'UTMExpress',
                        style: TextStyle(
                          fontFamily: 'DMSans',
                          fontSize: 48,
                          color: MyColor.amber[100],
                        ),
                      ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
