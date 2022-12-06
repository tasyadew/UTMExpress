import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'landing_controller.dart';

import '../../routes/app_pages.dart';
import '../../shared/color.dart';
import '../../widgets/button.dart';

class LandingView extends GetView<LandingController> {
  const LandingView({Key? key}) : super(key: key);

  void login(){print('test');}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.maroon[400],

      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget> [

            //gif + logo
            Expanded(
              flex: 3,
              child: Center(
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 50),
                      child: Image.asset(
                        'assets/img/puddle.png',
                        width: double.infinity,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(100, 0, 80, 100),
                      child: Image.asset('assets/img/login-logo.gif', fit: BoxFit.cover),
                    ),
                    Text(
                      'UTMExpress',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 48,
                        fontFamily: 'DMSans',
                        color: MyColor.amber[100],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(25.0),
                    topLeft: Radius.circular(25.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 50),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget> [
                      ButtonWidget(
                        buttonText: "Log In",
                        backgroundColor: MyColor.amber,
                        foregroundColor: Colors.black,
                        shadowColor: (MyColor.amber[600])!,
                        buttonHeight: 60.0,
                        onPressed: (){
                          controller.login();
                        },
                      ),
                      ButtonWidget(
                        buttonText: "Continue as Guest",
                        backgroundColor: (Colors.grey[300])!,
                        foregroundColor: Colors.black,
                        shadowColor: (Colors.grey[400])!,
                        buttonHeight: 60.0,
                        onPressed: (){
                          controller.guest();
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}