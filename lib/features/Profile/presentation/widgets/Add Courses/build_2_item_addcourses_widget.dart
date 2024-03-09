import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:p1/core/extension/extension.dart';
import 'package:p1/features/Profile/presentation/widgets/Add%20Courses/build_dropdown_buttom_search.dart';

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
          child: _widgetList[index],
        );
      },
    );
  }
}

List<Widget> _widgetList = [
  const BuildDropDownButtomSearchWidget(
    hintText: 'Course Student',
    list: ['Osama Nabil'],
  ),
  const BuildDropDownButtomSearchWidget(
    hintText: 'Course Tutor',
    list: [
      'Osama Nabil',
      'Ahmed mohamed',
      'yassen khalid',
      'amina yasser',
      'Omar ahmed',
    ],
  ),
];

int _calculateCrossAxisCount(BuildContext context) {
  if (!context.isMobile) {
    return 1;
  } else {
    return 2;
  }
}

double _calculateChildAspectRatio(BuildContext context) {
  if (!context.isMobile) {
    return 6.w;
  }
  if (!context.isTablet) {
    return 5;
  }
  if (context.isDesktop) {
    return 2.5.w;
  } else {
    return 3.w;
  }
}
