import 'package:flutter/material.dart';
import 'package:utmexpress/shared/color.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.maroon,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget> [
          //gif + logo
          Expanded(
            flex: 2,
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Image.asset('assets/img/puddle2.png', fit: BoxFit.cover),
                Padding(
                  padding: const EdgeInsets.all(75.0),
                  child: Image.asset('assets/img/login-logo.gif'),
                ),
              ],
            ),
          ),

          
          //2 buttons
          Expanded(
            flex: 1,
            child: Column(
              children: <Widget> [
                TextButton(
                  onPressed: () {},
                  child: Text('Sign In'),
                  style: TextButton.styleFrom(
                    backgroundColor: MyColor.amber,
                    foregroundColor: Colors.black87,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}