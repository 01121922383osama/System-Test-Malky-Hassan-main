import 'package:flutter/material.dart';
import 'package:pie_menu/pie_menu.dart';

import '../../../dashboard/presentation/widgets/custom_drawer.dart';
import '../widgets/body_app_page.dart';

class AppPage extends StatelessWidget {
  const AppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const PieCanvas(
      child: Scaffold(
        drawer: CustomDrawer(),
        body: BodyAppPage(),
      ),
    );
  }
}
