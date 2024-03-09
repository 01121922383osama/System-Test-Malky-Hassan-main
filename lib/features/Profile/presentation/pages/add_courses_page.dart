import 'package:flutter/material.dart';
import 'package:p1/core/constant/app_colors.dart';
import 'package:p1/core/widgets/some_spacing.dart';
import 'package:p1/features/Profile/presentation/widgets/Add%20Courses/add_course_days_widget.dart';
import 'package:p1/features/Profile/presentation/widgets/Add%20Courses/build_2_item_addcourses_widget.dart';
import 'package:p1/features/Profile/presentation/widgets/Add%20Courses/build_3_items_addcours.dart';
import 'package:p1/features/Profile/presentation/widgets/Add%20Courses/build_first_4_items_addcourses_page.dart';
import 'package:p1/features/Profile/presentation/widgets/Add%20Courses/build_list_course.dart';
import 'package:p1/features/dashboard/presentation/widgets/build_custom_appbar.dart';

class AddCoursesPage extends StatelessWidget {
  const AddCoursesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const CustomAppBarWidget(),
        const Build4ItemsAddCourses(),
        const Build2ItemAddCoursesWidget(),
        const Build3ItemAddCoursesWidget(),
        BuildDividerWidget(
          color: AppColors.darkblue.withOpacity(0.5),
        ),
        const AddCourseDaysWidget(),
        BuildDividerWidget(
          color: AppColors.darkblue.withOpacity(0.5),
        ),
        const BuildListCoursesWidget(),
      ],
    );
  }
}
