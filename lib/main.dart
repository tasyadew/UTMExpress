import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:utmexpress/views/pages/login2.dart';
import 'package:utmexpress/views/pages/splash.dart';
import 'package:utmexpress/views/pages/loading.dart';
import 'package:utmexpress/views/pages/login.dart';
import 'package:utmexpress/views/pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return GetMaterialApp(
      initialRoute: '/login2',
      routes: {
        '/': (context) => Splash(),
        '/loading': (context) => Loading(),
        '/login': (context) => Login(),
        '/login2': (context) => Login2(),
        '/home': (context) => Home(),
      },
    );
  }
}




