import 'package:flutter/material.dart';

import '../constants/color.dart';

class BusWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.maroon[400],
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/img/puddle.png',
                fit: BoxFit.cover,
                width: 350,
                height: 200,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:50),
              child: Image.asset(
                'assets/img/login-logo.gif',
                fit: BoxFit.cover,
                width: 276,
                height: 132.8,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:300),
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
          ],
        ),
      ),
    );
  }
}
