import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:utmexpress/widgets/horizontal_menu_item.dart';
import 'package:utmexpress/widgets/vertical_menu_item.dart';

import '../helpers/responsiveView.dart';

class SideMenuItem extends StatelessWidget {
  final String itemName;
  final VoidCallback onTap;

  const SideMenuItem({
    Key? key,
    required this.itemName,
    required this.onTap
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if(ResponsiveView.isMediumScreen(context)) {
      return VerticalMenuItem(itemName: itemName, onTap: onTap);
    } else {
      return HorizontalMenuItem(itemName: itemName, onTap: onTap);
    }
  }
}
