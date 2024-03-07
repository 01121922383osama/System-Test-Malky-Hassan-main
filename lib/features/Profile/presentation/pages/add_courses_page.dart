import 'package:flutter/material.dart';
import 'package:p1/features/Profile/presentation/widgets/Add%20Courses/build_2_item_addcourses_widget.dart';
import 'package:p1/features/Profile/presentation/widgets/Add%20Courses/build_first_4_items_addcourses_page.dart';
import 'package:p1/features/dashboard/presentation/widgets/build_custom_appbar.dart';

class AddCoursesPage extends StatelessWidget {
  const AddCoursesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        CustomAppBarWidget(),
        Build4ItemsAddCourses(),
        Build2ItemAddCoursesWidget(),
      ],
    );
  }
}
