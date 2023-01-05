
import 'package:flutter/material.dart';
import 'package:utmexpress/widgets/button.dart';

import '../constants/style.dart';
import '../helpers/responsiveView.dart';
import 'custom_text.dart';


AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
  AppBar(
    backgroundColor: maroon,
    leading: !ResponsiveView.isSmallScreen(context)?
    Row(): IconButton(icon: Icon(Icons.menu, color: amber,), onPressed: (){
      key.currentState?.openDrawer();
    },),
    elevation: 0,
    title: Row(
      children: [
        Visibility(child: CustomText(
          text: "UTMExpress",
          color: amber,
          size: 24,
          weight: FontWeight.bold,)
        ),
        Expanded(child: Container()),
        Stack(
          children: [
            IconButton(
              icon: Icon(Icons.notifications, color: amber),
              onPressed: (){},
            ),
            Positioned(
              top: 7,
              right: 7,
              child: Container(
                width: 12,
                height: 12,
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: maroon, width:2)
                ),
              ),
            )
          ],
        ),

        const SizedBox(width: 10),

        ButtonWidget(
          text: "Log In",
          textColor: Colors.black,
          backgroundColor: amber,
          boxWidth: 100,
          boxHeight: 50,
          onPressed: () {  },
        ),
      ],
    ),
  );
