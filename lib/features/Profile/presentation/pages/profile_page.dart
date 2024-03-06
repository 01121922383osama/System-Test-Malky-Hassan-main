import 'package:flutter/material.dart';
import '../widgets/body_profile_page.dart';

import '../../../dashboard/presentation/widgets/build_custom_appbar.dart';
import '../widgets/build_profile_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final TabController tabController =
        TabController(length: 4, vsync: Scaffold.of(context));

    return CustomScrollView(
      slivers: [
        const CustomAppBarWidget(),
        BuildProfileWidget(tabController: tabController),
        BodyProfilePage(tabController: tabController),
      ],
    );
  }
}
