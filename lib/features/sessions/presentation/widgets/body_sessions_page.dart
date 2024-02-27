import 'package:flutter/material.dart';
import 'package:p1/features/dashboard/presentation/widgets/build_custom_appbar.dart';
import 'package:p1/features/sessions/presentation/widgets/build_nav_widget.dart';
import 'package:p1/features/sessions/presentation/widgets/build_tada_table_widget.dart';

class BodySessionsPage extends StatelessWidget {
  const BodySessionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        BuildCustomAppBarDash(),
        BuidlNavWidgets(),
        BuildDataTableWidget(),
      ],
    );
  }
}
