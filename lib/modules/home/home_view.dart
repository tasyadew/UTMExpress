import 'package:flutter/material.dart';

import '../../shared/color.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
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
