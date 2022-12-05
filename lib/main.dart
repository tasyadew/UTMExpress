import 'package:flutter/material.dart';
import 'package:utmexpress/pages/login2.dart';
import 'package:utmexpress/pages/splash.dart';
import 'package:utmexpress/pages/loading.dart';
import 'package:utmexpress/pages/login.dart';
import 'package:utmexpress/pages/home.dart';


void main() => runApp(MaterialApp(
  initialRoute: '/login2',
  routes: {
    '/': (context) => Splash(),
    '/loading': (context) => Loading(),
    '/login': (context) => Login(),
    '/login2': (context) => Login2(),
    '/home': (context) => Home(),
  },
));



