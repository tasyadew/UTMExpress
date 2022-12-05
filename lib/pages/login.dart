import 'package:flutter/material.dart';
import 'package:utmexpress/shared/color.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isLoginPressed = false;
  bool isGuestPressed = false;
  void buttonPressed(int x) async {
    if (x == 0){
      setState(() { isLoginPressed = true; });
      await Future.delayed(Duration(milliseconds: 100));
      setState(() { isLoginPressed = false; });
    } else if (x == 1){
      setState(() { isGuestPressed = true; });
      await Future.delayed(Duration(milliseconds: 100));
      setState(() { isGuestPressed = false; });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.maroon[400],

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget> [

          //gif + logo
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 50.0, left: 20.0, right: 20.0),
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/img/puddle.png',
                    width: double.infinity,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(80, 0, 60, 0),
                    child: Image.asset('assets/img/login-logo.gif', fit: BoxFit.cover),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height/2-25.5,
                    child: const Text(
                      'UTMExpress',
                      style: TextStyle(
                        fontSize: 48,
                        fontFamily: 'Arial',
                        color: MyColor.amber,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          Expanded(
            flex: 1,
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
                    SizedBox(
                      width: double.infinity,
                      height: 60.0,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          color: const Color(0x00000000),
                          boxShadow:  [
                            BoxShadow(
                              color: (MyColor.amber[600])!,
                              blurRadius: 0.0,
                              spreadRadius: 0.0,
                              offset: isLoginPressed ? Offset.fromDirection(0.785, 0.0) : Offset.fromDirection(0.785, 10.0),
                            )
                          ],
                        ),

                        child: ElevatedButton(
                          onPressed: () {
                            buttonPressed(0);
                            //login here
                          },
                          style: ElevatedButton.styleFrom(
                            elevation: 0.0,
                            shadowColor: Colors.transparent,
                            backgroundColor: MyColor.amber,
                            foregroundColor: Colors.black,
                            textStyle: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Arial'
                            ),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
                          ),
                          child: const Text('Log In'),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 60.0,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          color: const Color(0x00000000),
                          boxShadow:  [
                            BoxShadow(
                                color: (Colors.grey[400])!,
                                blurRadius: 0.0,
                                spreadRadius: 0.0,
                                offset: isGuestPressed ? Offset.fromDirection(0.785, 0.0) : Offset.fromDirection(0.785, 10.0),
                            )
                          ],
                        ),

                        child: ElevatedButton(
                          onPressed: () {
                            buttonPressed(1);
                            // Continue guest code here
                          },
                          style: ElevatedButton.styleFrom(
                            elevation: 0.0,
                            shadowColor: Colors.transparent,
                            backgroundColor: Colors.grey[300],
                            foregroundColor: Colors.black,
                            textStyle: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Arial'
                            ),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
                          ),
                          child: const Text('Continue As Guest'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}