import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:p1/core/constant/app_colors.dart';
import 'package:p1/core/extension/extension.dart';
import 'package:p1/core/widgets/custom_text_field_widget.dart';
import 'package:p1/features/Profile/presentation/widgets/Add%20Courses/build_dropdown_buttom_search.dart';
import 'package:p1/features/dashboard/presentation/cubit/themes/themes_app_cubit.dart';

class Build3ItemAddCoursesWidget extends StatelessWidget {
  const Build3ItemAddCoursesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: _calculateCrossAxisCount(context),
        childAspectRatio: _calculateChildAspectRatio(context),
      ),
      itemCount: 3,
      itemBuilder: (context, index) {
        return BlocBuilder<ThemesAppCubit, bool>(
          builder: (context, state) {
            return Container(
              alignment: Alignment.center,
              margin: index == 2
                  ? EdgeInsets.symmetric(
                      horizontal: 5, vertical: _calculateVertical(context))
                  : const EdgeInsets.all(5),
              decoration: index == 2
                  ? BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: state ? AppColors.dark : AppColors.white,
                      border: Border.all(
                        color: state
                            ? AppColors.white.withOpacity(0.5)
                            : AppColors.dark.withOpacity(0.5),
                        width: 1,
                      ),
                    )
                  : null,
              child: _widgetList[index],
            );
          },
        );
      },
    );
  }
}

List<Widget> _widgetList = [
  const BuildDropDownButtomSearchWidget(
    hintText: 'Plan',
    list: [
      'Plan A - 4 Sessions - 24\$',
      'Plan B - 3 Sessions - 18\$',
      'Plan C - 2 Sessions - 12\$',
      'Plan D - 1 Sessions - 6\$',
      'Plan E - 1 Sessions - 4\$',
      'One Trial 3+ 1 Sessions - 0\$',
      'Tow Trials 2 - 2 Sessions - 0\$',
      'Custom plan 24 Sessions - 90\$',
      'Custom plan 30 Sessions - 120\$',
    ],
  ),
  const BuildDropDownButtomSearchWidget(
    hintText: 'Course Paid',
    list: [
      'Course Paid',
      'Course Unpaid',
    ],
  ),
  const CustomTextFieldWidget(
    hintText: 'Course discount...',
    prefixIcon: Icon(Icons.money_off_csred_sharp),
    keyboardType: TextInputType.number,
  ),
];

int _calculateCrossAxisCount(BuildContext context) {
  if (!context.isMobile) {
    return 1;
  } else {
    return 3;
  }
}

double _calculateChildAspectRatio(BuildContext context) {
  if (!context.isMobile) {
    return 6;
  }
  if (!context.isTablet) {
    return 3.5;
  }
  if (context.isDesktop) {
    return 5.5;
  } else {
    return 4;
  }
}

double _calculateVertical(BuildContext context) {
  if (!context.isMobile) {
    return 8;
  }
  if (!context.isTablet) {
    return 2;
  }
  if (context.isDesktop) {
    return 2.5.w;
  } else {
    return 2.5.w;
  }
}
