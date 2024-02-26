import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:p1/core/constant/app_colors.dart';
import 'package:p1/core/extension/extension.dart';
import 'package:p1/features/dashboard/presentation/cubit/themes/themes_app_cubit.dart';
import 'package:p1/features/dashboard/presentation/widgets/build_circle.dart';
import 'package:p1/features/dashboard/presentation/widgets/build_dounut_circle_charts_widget.dart';
import 'package:p1/features/dashboard/presentation/widgets/build_plans_charts.dart';

class BuildChartsWidgets extends StatelessWidget {
  const BuildChartsWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      addAutomaticKeepAlives: false,
      addRepaintBoundaries: false,
      addSemanticIndexes: false,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: _calculateCrossAxisCount(context),
        childAspectRatio: _calculateChildAspectRatio(context),
      ),
      itemCount: 3,
      itemBuilder: (context, index) {
        return BlocBuilder<ThemesAppCubit, bool>(
          builder: (context, state) {
            return Container(
              padding: const EdgeInsets.all(5),
              alignment: Alignment.center,
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: state ? AppColors.dark : Colors.white,
              ),
              child: FittedBox(child: getWidgetList[index]),
            );
          },
        );
      },
    );
  }
}

double _calculateChildAspectRatio(BuildContext context) {
  if (!context.isMobile) {
    return 1.4;
  }
  if (!context.isTablet) {
    return 2.6;
  }
  if (context.isDesktop) {
    return 2.4;
  } else {
    return 3;
  }
}

int _calculateCrossAxisCount(BuildContext context) {
  if (!context.isMobile) {
    return 1;
  } else if (context.isDesktop) {
    return 2;
  } else if (!context.isTablet) {
    return 1;
  } else {
    return 1;
  }
}

List<Widget> getWidgetList = [
  const CustomDoughnutCircleChartsWidget(),
  const BuildCirleChartsWidget(),
  const BuildPlansChartsWidget(),
];
