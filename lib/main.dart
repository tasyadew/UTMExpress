import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:utmexpress/layout.dart';

import 'controllers/menu_controller.dart';

void main() async{
  Get.put(MenuController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "UTMExpress",
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: GoogleFonts.mulishTextTheme(
          Theme.of(context).textTheme,
        ).apply(
          bodyColor: Colors.black,
        ),
      ),
      home: SiteLayout(),
    );
  }
}



