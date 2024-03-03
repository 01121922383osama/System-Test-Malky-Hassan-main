import 'package:flutter/material.dart';
import 'package:p1/features/Profile/presentation/widgets/build_profile_widget.dart';
import 'package:p1/features/dashboard/presentation/widgets/build_custom_appbar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        CustomAppBarWidget(),
        BuildProfileWidget(),
      ],
    );
  }
}
