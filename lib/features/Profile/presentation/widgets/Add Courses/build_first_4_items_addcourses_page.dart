import 'package:flutter/material.dart';
import 'package:p1/core/constant/app_colors.dart';
import 'package:p1/core/extension/extension.dart';
import 'package:p1/features/Profile/presentation/widgets/Add%20Courses/build_date_time_widget.dart';
import 'package:p1/features/Profile/presentation/widgets/Add%20Courses/build_pop_menu_courses.dart';

class Build4ItemsAddCourses extends StatelessWidget {
  const Build4ItemsAddCourses({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: _calculateCrossAxisCount(context),
        childAspectRatio: _calculateChildAspectRatio(context),
      ),
      itemCount: 4,
      itemBuilder: (context, index) {
        return Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: AppColors.darkblue.withOpacity(0.5)),
          ),
          child: _widgetsPopMenu[index],
        );
      },
    );
  }
}

List<Widget> _widgetsPopMenu = [
  const BuildPopMenuCourseTitle(
    initialText: 'Quran',
    itemList: ['Quran', 'Q & I', 'Q & A', 'Q & A & I', 'Arabic'],
  ),
  const BuildPopMenuCourseTitle(
    initialText: 'Trial Course',
    itemList: ['Trial Course', 'Free Course', 'Paid Course'],
  ),
  const BuildDateTimeNowWidget(),
  const BuildPopMenuCourseTitle(
    initialText: 'Active',
    itemList: ['Active', 'Suspended'],
  ),
];

int _calculateCrossAxisCount(BuildContext context) {
  if (!context.isMobile) {
    return 2;
  } else if (context.isDesktop) {
    return 4;
  } else if (!context.isTablet) {
    return 4;
  } else {
    return 4;
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
