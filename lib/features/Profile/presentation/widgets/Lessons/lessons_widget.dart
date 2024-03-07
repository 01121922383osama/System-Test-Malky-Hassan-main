import 'package:flutter/material.dart';
import 'package:p1/features/Profile/presentation/widgets/Lessons/build_table_lessons_widget.dart';

class LessonsWidget extends StatelessWidget {
  const LessonsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      physics: NeverScrollableScrollPhysics(),
      child: BuildTableLessonsProfileWidget(),
    );
  }
}
