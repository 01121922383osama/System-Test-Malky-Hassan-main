import 'package:flutter/material.dart';
import 'package:p1/features/App/presentation/widgets/body_app_page.dart';
import 'package:p1/features/dashboard/presentation/widgets/build_custom_appbar.dart';
import 'package:p1/features/dashboard/presentation/widgets/custom_drawe.dart';

class AppPage extends StatelessWidget {
  const AppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: AppBar(
        flexibleSpace: const BuildCustomAppBarDash(),
        automaticallyImplyLeading: false,
      ),
      body: const BodyAppPage(),
    );
  }
}
