import 'package:flutter/material.dart';
import '../widgets/body_app_page.dart';
import '../../../dashboard/presentation/widgets/custom_drawer.dart';

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
