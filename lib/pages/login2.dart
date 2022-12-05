import 'package:flutter/material.dart';
import 'package:utmexpress/shared/color.dart';
import 'package:utmexpress/widgets/textfield.dart';

import '../widgets/button.dart';

class Login2 extends StatefulWidget {
  const Login2({Key? key}) : super(key: key);

  @override
  State<Login2> createState() => _Login2State();
}

class _Login2State extends State<Login2> {
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
      //resizeToAvoidBottomInset: false,

      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget> [
            //logo
            Expanded(
              flex: MediaQuery.of(context).viewInsets.bottom == 0 ? 3 : 1,
              child: Center(
                child: Text(
                  'UTMExpress',
                  style: TextStyle(
                    fontSize: 48,
                    fontFamily: 'DMSans',
                    color: MyColor.amber[100],
                  ),
                ),
              ),
            ),

            Expanded(
              flex: (MediaQuery.of(context).viewInsets.bottom == 0) ? 2 : 3,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(25.0),
                    topLeft: Radius.circular(25.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(50.0, 25.0, 50.0, 0.0),
                  child: Column(
                    children: <Widget> [
                      TextFieldWidget(
                        hintText: 'Username',
                        obscureText: false,
                        prefixIconData: Icons.account_circle,
                        suffixIconData: Icons.check,

                      ),
                      const SizedBox(height: 10.0,),
                      TextFieldWidget(
                        hintText: 'Password',
                        obscureText: true,
                        prefixIconData: Icons.lock,
                        suffixIconData: Icons.visibility_off,

                      ),
                      const SizedBox(height: 20.0,),
                      ButtonWidget(
                        buttonText: "Log In",
                        backgroundColor: MyColor.amber,
                        foregroundColor: Colors.black,
                        shadowColor: (MyColor.amber[600])!,
                        buttonHeight: 60.0,
                        onPressed: (){},
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