import 'package:flutter/material.dart';
import 'package:p1/features/dashboard/presentation/widgets/build_custom_appbar.dart';
import 'package:p1/features/dashboard/presentation/widgets/build_info_widget.dart';
import 'package:p1/features/dashboard/presentation/widgets/build_total_info.dart';

class BuildBodyDashBoard extends StatelessWidget {
  const BuildBodyDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        BuildCustomAppBarDash(),
        BuildInfoWidget(),
        BuildTotalInfoWidget(),
      ],
    );
  }
}
