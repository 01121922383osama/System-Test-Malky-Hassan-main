import 'package:flutter/material.dart';
import 'package:p1/core/extension/extension.dart';

import 'courses_widget.dart';
import 'dash_board_widget.dart';
import 'history_widget.dart';
import 'lessons_widget.dart';

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
