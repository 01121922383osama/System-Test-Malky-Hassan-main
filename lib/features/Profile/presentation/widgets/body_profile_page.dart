import 'package:flutter/material.dart';
import 'package:p1/features/Profile/presentation/widgets/courses_widget.dart';
import 'package:p1/features/Profile/presentation/widgets/dash_board_widget.dart';
import 'package:p1/features/Profile/presentation/widgets/history_widget.dart';
import 'package:p1/features/Profile/presentation/widgets/lessons_widget.dart';

class BodyProfilePage extends StatelessWidget {
  final TabController tabController;

  const BodyProfilePage({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      child: TabBarView(
        controller: tabController,
        // physics: const NeverScrollableScrollPhysics(),
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
