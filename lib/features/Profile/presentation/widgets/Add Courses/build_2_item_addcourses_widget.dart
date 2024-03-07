import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:p1/core/extension/extension.dart';
import 'package:p1/features/dashboard/presentation/cubit/themes/themes_app_cubit.dart';

class Build2ItemAddCoursesWidget extends StatelessWidget {
  const Build2ItemAddCoursesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: _calculateCrossAxisCount(context),
        childAspectRatio: _calculateChildAspectRatio(context),
      ),
      itemCount: 2,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: BuildDropDownButtomSearchWidget(
            list: [
              'list + ${index + 1}',
              'list + ${index + 2}',
              'list + ${index + 3}',
              'list + ${index + 4}',
              'list + ${index + 5}',
              'list + ${index + 6}',
            ],
          ),
        );
      },
    );
  }
}

class BuildDropDownButtomSearchWidget extends StatelessWidget {
  final List<dynamic> list;
  const BuildDropDownButtomSearchWidget({super.key, required this.list});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemesAppCubit, bool>(
      builder: (context, state) {
        return CustomDropdown.search(
          excludeSelected: false,
          initialItem: list[0],
          hideSelectedFieldWhenExpanded: true,
          items: list,
          onChanged: (value) {},
        );
      },
    );
  }
}

int _calculateCrossAxisCount(BuildContext context) {
  if (!context.isMobile) {
    return 1;
  } else {
    return 2;
  }
}

double _calculateChildAspectRatio(BuildContext context) {
  if (!context.isMobile) {
    return 4;
  }
  if (!context.isTablet) {
    return 3.5;
  }
  if (context.isDesktop) {
    return 5.1;
  } else {
    return 4;
  }
}
