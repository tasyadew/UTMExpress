import 'package:flutter/material.dart';
import 'package:utmexpress/pages/account/account_page.dart';
import 'package:utmexpress/pages/home/home_page.dart';
import 'package:utmexpress/pages/notification/notification_page.dart';
import 'package:utmexpress/pages/report/report_page.dart';
import 'package:utmexpress/pages/schedule/schedule_page.dart';
import 'package:utmexpress/routing/routes.dart';


Route<dynamic> generateRoute(RouteSettings settings){
  switch(settings.name){
    case HomePageRoute:
      return _getPageRoute(const HomePage());
    case BusSchedulePageRoute:
      return _getPageRoute(const SchedulePage());
    case ReportPageRoute:
      return _getPageRoute(const ReportPage());
    case NotificationPageRoute:
      return _getPageRoute(const NotificationPage());
    case AccountPageRoute:
      return _getPageRoute(const AccountPage());
    default:
      return _getPageRoute(const AccountPage());
  }
}

PageRoute _getPageRoute(Widget child){
  return MaterialPageRoute(builder: (context) => child);
}