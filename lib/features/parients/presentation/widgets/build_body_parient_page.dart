import 'package:flutter/material.dart';
import '../../../../core/widgets/some_spacing.dart';
import '../../../dashboard/presentation/widgets/build_custom_appbar.dart';
import 'build_data_table.dart';
import 'build_nav_pareint_widget.dart';

class BodyParientsPage extends StatelessWidget {
  const BodyParientsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const CustomAppBarWidget(),
        someSpacing(),
        const BuildNavPareintWidget(),
        someSpacing(),
        const BuildDataTableParientsWidget(),
        someSpacing(),
      ],
    );
  }
}
