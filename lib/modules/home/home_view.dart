import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home_controller.dart';
import '../../shared/color.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

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

            child: TextButton(
              onPressed: (){ controller.logout();},
              child: Text('Log Out'),
            ),
        ),
      ),
    );
  }
}
