import 'package:flutter/material.dart';
import 'package:p1/features/App/presentation/widgets/body_app_page.dart';
import 'package:p1/features/dashboard/presentation/widgets/custom_drawer.dart';

class AppPage extends StatelessWidget {
  const AppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: CustomDrawer(),
      body: BodyAppPage(),
    );
  }
}
