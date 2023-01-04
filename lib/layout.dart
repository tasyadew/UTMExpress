import 'package:flutter/material.dart';
import 'package:utmexpress/widgets/large_screen.dart';
import 'package:utmexpress/widgets/side_menu.dart';
import 'package:utmexpress/widgets/top_navbar.dart';

import 'helpers/responsiveView.dart';

class SiteLayout extends StatelessWidget {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: topNavigationBar(context, scaffoldKey),
      drawer: const Drawer(
        child: SideMenu(),
      ),
      body:const ResponsiveView(
        largeScreen: LargeScreen(),
        smallScreen: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
        ),

      ),
    );
  }
}
