import 'package:flutter/material.dart';
import '../../features/App/presentation/pages/app_page.dart';
import '../../features/auth/presentation/pages/login_page.dart';

import '../../features/dashboard/presentation/pages/dashboard_page.dart';
import 'router_name.dart';

class Routers {
  static Route ongenerateRouter(RouteSettings settings) {
    switch (settings.name) {
      case AppRouter.loginpage:
        return MaterialPageRoute(builder: (context) => const LoginPage());
      case AppRouter.appPage:
        return MaterialPageRoute(builder: (context) => const AppPage());
      case AppRouter.dashboard:
        return MaterialPageRoute(builder: (context) => const DashboardPage());
      default:
        return errorRoute(settings);
    }
  }

  static Route errorRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const Scaffold(
        body: Center(
          child: Text('404'),
        ),
      ),
    );
  }
}
