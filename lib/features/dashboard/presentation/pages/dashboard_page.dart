import 'package:flutter/material.dart';

import '../widgets/custom_dashboard_page.dart';
import '../widgets/custom_drawe.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: CustomDrawer(),
      body: BuildBodyDashBoard(),
    );
  }
}
