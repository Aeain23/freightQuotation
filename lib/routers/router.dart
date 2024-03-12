import 'package:flutter/material.dart';

import 'package:freightquote/routers/routes.dart';
import 'package:freightquote/views/widgets/dashboard_screen.dart';
import 'package:freightquote/views/widgets/freight_charge_screen.dart';
import 'package:freightquote/views/widgets/login_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case dashBoardPageRoute:
      return _getPageRoute(const DashboardScreen());
    case loginPageRoute:
      return _getPageRoute(const LoginScreen());
    case freightChargePageRoute:
      return _getPageRoute(const FreightChargeScreen());
    default:
      return _getPageRoute(const DashboardScreen());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
