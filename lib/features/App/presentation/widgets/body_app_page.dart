import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:p1/core/extension/extension.dart';
import 'package:p1/features/dashboard/presentation/pages/dashboard_page.dart';
import 'package:p1/features/dashboard/presentation/widgets/custom_drawe.dart';

class BodyAppPage extends StatelessWidget {
  const BodyAppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (context.isDesktop)
          SizedBox(
            width: context.width / 6.2,
            child: const CustomDrawer(),
          ),
        const Expanded(
          child: DashboardPage(),
        ),
      ],
    );
  }
}
