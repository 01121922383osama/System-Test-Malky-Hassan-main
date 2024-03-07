import 'package:flutter/material.dart';
import 'package:p1/core/extension/extension.dart';

import 'Courses/courses_widget.dart';
import 'DashBoard/dash_board_widget.dart';
import 'History/history_widget.dart';
import 'Lessons/lessons_widget.dart';

class BodyProfilePage extends StatelessWidget {
  final TabController tabController;

  const BodyProfilePage({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      child: TabBarView(
        controller: tabController,
        physics:
            !context.isMobile ? null : const NeverScrollableScrollPhysics(),
        children: const [
          DashBoardWidget(),
          LessonsWidget(),
          CoursesWidget(),
          HistoryWidget(),
        ],
      ),
    );
  }
}
