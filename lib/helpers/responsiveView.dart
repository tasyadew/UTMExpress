import 'package:flutter/material.dart';

const int largeScreenSize = 1080; //desktop
const int mediumScreenSize = 768; //tablet
const int smallScreenSize = 360; //mobile

class ResponsiveView extends StatelessWidget {
  final Widget largeScreen;
  final Widget? mediumScreen;
  final Widget? smallScreen;

  const ResponsiveView({
    Key? key,
    required this.largeScreen,
    this.mediumScreen,
    this.smallScreen
  }) : super(key: key);

  static bool isSmallScreen(BuildContext context) =>
      MediaQuery.of(context).size.width < mediumScreenSize;

  static bool isMediumScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= mediumScreenSize &&
      MediaQuery.of(context).size.width < largeScreenSize;

  static bool isLargeScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= largeScreenSize;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints){
      double currWidth = constraints.maxWidth;
      if(currWidth >= largeScreenSize){
        return largeScreen;
      }
      else if(currWidth < largeScreenSize && currWidth >= mediumScreenSize){
        return mediumScreen ?? largeScreen;
      }
      else{
        return smallScreen ?? largeScreen;
      }
    });
  }
}
