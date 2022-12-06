import 'package:flutter/material.dart';
import 'package:utmexpress/views/shared/color.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
            'UTMExpress',
          style: TextStyle(
            color: MyColor.amber[100],
            fontFamily: 'DMSans',
            fontSize: 24,
          ),
        ),
        backgroundColor: MyColor.maroon[400],
      ),
      body: SafeArea(
        child: Center(

            child: Text('HOME')
        ),
      ),
    );
  }
}
