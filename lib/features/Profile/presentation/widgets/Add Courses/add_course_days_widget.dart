import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:p1/core/extension/extension.dart';
import 'package:p1/features/Profile/presentation/widgets/Add%20Courses/build_buttom_add_course.dart';
import 'package:p1/features/Profile/presentation/widgets/Add%20Courses/build_dropdown_buttom_search.dart';
import 'package:p1/features/Profile/presentation/widgets/Add%20Courses/build_start_end_date.dart';

class AddCourseDaysWidget extends StatelessWidget {
  const AddCourseDaysWidget({super.key});

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
          margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: index != 0
                ? Border.all(
                    color: Theme.of(context).dividerColor,
                    width: 1,
                  )
                : null,
          ),
          child: _widgets[index],
        );
      },
    );
  }
}

List<Widget> _widgets = [
  const BuildDropDownButtomSearchWidget(
    list: [
      'Monday',
      'Tuesday',
      'Wednesday',
      'Thursday',
      'Friday',
      'Saturday',
      'Sunday',
    ],
    hintText: 'Course Days',
  ),
  const BuildStartEndDateWidget(
    text: 'Start Date',
  ),
  const BuildStartEndDateWidget(
    text: 'End Date',
  ),
  const BuildButtomAddCourse(),
];

int _calculateCrossAxisCount(BuildContext context) {
  if (!context.isMobile) {
    return 2;
  } else {
    return 4;
  }
}

double _calculateChildAspectRatio(BuildContext context) {
  if (!context.isMobile) {
    return 3.w;
  }
  if (!context.isTablet) {
    return 1.5.w;
  }
  if (context.isDesktop) {
    return 1.3.w;
  } else {
    return 1.5.w;
  }
}
