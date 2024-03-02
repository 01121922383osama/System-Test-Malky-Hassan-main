import 'package:flutter/material.dart';
import 'build_chart_widgets.dart';
import 'build_custom_appbar.dart';
import 'build_info_widget.dart';
import 'build_total_info.dart';

class BuildBodyDashBoard extends StatelessWidget {
  const BuildBodyDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        BuildCustomAppBarDash(),
        BuildInfoWidget(),
        BuildTotalInfoWidget(),
        BuildChartsWidgets(),
      ],
    );
  }
}
