import 'package:flutter/material.dart';
import 'package:p1/core/constant/app_colors.dart';
import 'package:p1/features/Profile/presentation/widgets/build_table_profile_dashboard_widget.dart';

class ProfileTableDash extends StatelessWidget {
  const ProfileTableDash({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: AppColors.darkblue,
            width: 1,
          ),
        ),
        child: const BuildTableDashProfileWidget(),
      ),
    );
  }
}
