import 'package:flutter/material.dart';
import 'package:p1/core/widgets/some_spacing.dart';

import '../../../dashboard/presentation/widgets/build_custom_appbar.dart';
import 'build_nav_widget.dart';
import 'build_tada_table_widget.dart';

class BodySessionsPage extends StatelessWidget {
  const BodySessionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const CustomAppBarWidget(),
        someSpacing(),
        const BuidlNavWidgets(),
        someSpacing(),
        const BuildDataTableSessionsWidget(),
        someSpacing(),
      ],
    );
  }
}
