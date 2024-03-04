import 'package:flutter/material.dart';
import '../widgets/build_profile_widget.dart';
import '../../../dashboard/presentation/widgets/build_custom_appbar.dart';

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
