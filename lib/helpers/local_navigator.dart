import 'package:flutter/widgets.dart';
import 'package:utmexpress/routing/routes.dart';

import '../constants/controllers.dart';
import '../routing/router.dart';

Navigator localNavigator() => Navigator(
  key: navigationController.navigationKey,
  initialRoute: HomePageRoute,
  onGenerateRoute: generateRoute,
);