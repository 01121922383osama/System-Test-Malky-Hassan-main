import 'package:flutter/material.dart';
import 'package:p1/core/widgets/some_spacing.dart';
import 'package:p1/features/dashboard/presentation/widgets/build_custom_appbar.dart';
import 'package:p1/features/parients/presentation/widgets/build_data_table.dart';

class BodyParientsPage extends StatelessWidget {
  const BodyParientsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const BuildCustomAppBarDash(),
        someSpacing(),
        const BuildDataTableParientsWidget(),
        someSpacing(),
      ],
    );
  }
}
