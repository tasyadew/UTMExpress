import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:utmexpress/routing/routes.dart';

import '../constants/style.dart';

class MenuController extends GetxController{
  static MenuController instance = Get.find();
  var activeItem = HomePageRoute.obs;
  var hoverItem = "".obs;

  changeActiveItemTo(String itemName){
    activeItem.value = itemName;
  }

  onHover(String itemName){
    if(!isActive(itemName)) hoverItem.value = itemName;
  }

  isActive(String itemName) => activeItem.value == itemName;

  isHovering(String itemName) => hoverItem.value == itemName;

  Widget returnIconFor(String itemName){
    switch (itemName){
      case HomePageRoute:
        return _customIcon(Icons.home, itemName);
      case BusSchedulePageRoute:
        return _customIcon(Icons.schedule, itemName);
      case ReportPageRoute:
        return _customIcon(Icons.report, itemName);
      case NotificationPageRoute:
        return _customIcon(Icons.notifications, itemName);
      case AccountPageRoute:
        return _customIcon(Icons.person, itemName);
      default:
        return _customIcon(Icons.person, itemName);
    }
  }

  Widget _customIcon(IconData icon, String itemName){
    if(isActive(itemName)) return Icon(icon, size: 22, color: Colors.black,);

    return Icon(icon, color: isHovering(itemName) ? Colors.black : amber);
  }
}