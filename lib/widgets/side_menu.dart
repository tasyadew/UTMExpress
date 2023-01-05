import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:utmexpress/routing/routes.dart';

import '../constants/controllers.dart';
import '../constants/style.dart';
import '../helpers/responsiveView.dart';
import 'custom_text.dart';
import 'side_menu_item.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double currWidth = MediaQuery.of(context).size.width;

    return Container(
      color: maroon,
      child: ListView(
        children: [
          if(ResponsiveView.isSmallScreen(context))
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 40),
                Row(
                  children: [
                    SizedBox(width: currWidth / 48),
                    const Padding(padding: EdgeInsets.only(right: 12)),
                    Flexible(
                      child: CustomText(
                        text: "UTMExpress",
                        size: 20,
                        weight: FontWeight.bold,
                        color: amber,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40),

              ],
            ),

          Column(
            mainAxisSize: MainAxisSize.min,
            children: sideMenuItems.map((itemName) => SideMenuItem(
              itemName: itemName,
              onTap: (){
                if(!menuController.isActive(itemName)){
                  menuController.changeActiveItemTo(itemName);
                  if(ResponsiveView.isSmallScreen(context)) {
                    Get.back();
                  }
                  navigationController.navigateTo(itemName);
                }
              },
            )).toList(),
          ),

        ],
      ),
    );
  }
}
