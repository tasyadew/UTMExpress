import 'package:flutter/material.dart';
import 'package:utmexpress/pages/loading.dart';
import 'package:utmexpress/pages/login.dart';
import 'package:utmexpress/pages/home.dart';


void main() => runApp(MaterialApp(
  initialRoute: '/login',
  routes: {
    '/': (context) => Loading(),
    '/login': (context) => Login(),
    '/home': (context) => Home(),
  },
));



