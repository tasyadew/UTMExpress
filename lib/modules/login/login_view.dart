import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../shared/color.dart';
import '../../widgets/button.dart';
import '../../widgets/textfield.dart';
import 'login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.maroon[400],

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
                  padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 50.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
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
                        onPressed: (){
                          controller.login();
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