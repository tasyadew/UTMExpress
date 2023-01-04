import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:utmexpress/constants/controllers.dart';

import '../constants/style.dart';
import 'custom_text.dart';

class HorizontalMenuItem extends StatelessWidget {
  final String itemName;
  final VoidCallback onTap;

  const HorizontalMenuItem({
    Key? key,
    required this.itemName,
    required this.onTap
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double currWidth = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: onTap,
      onHover: (value){
        value ?
            menuController.onHover(itemName) :
            menuController.onHover("not hovering");
      },
      child: Obx(() => Container(
        color: menuController.isHovering(itemName) ?
        amber.withOpacity(.9) : Colors.transparent,
        child: Container(
          color: menuController.isActive(itemName) ?
          amber.withOpacity(.9) : Colors.transparent,
          child: Row(
            children: [
              Visibility(
                visible: menuController.isHovering(itemName) || menuController.isActive(itemName),
                maintainSize: true,
                maintainState: true,
                maintainAnimation: true,
                child: Container(width: 5, height: 72, color: Colors.black,),
              ),

              Padding(
                padding: const EdgeInsets.all(16),
                child: menuController.returnIconFor(itemName),
              ),

              if(!menuController.isActive(itemName))
                Flexible(
                  child: CustomText(
                    text: itemName,
                    color: menuController.isHovering(itemName) ? Colors.black : amber,
                  ),
                )
              else
                Flexible(
                  child: CustomText(
                    text: itemName,
                    color: Colors.black,
                    weight: FontWeight.w900,
                  ),
                ),
            ],
          ),
        ),
      )),
    );
  }
}
