import 'package:flutter/material.dart';
import 'package:p1/core/constant/app_colors.dart';
import 'package:p1/core/extension/extension.dart';
import 'package:p1/features/Profile/presentation/widgets/info_profile_dash_widget.dart';
import 'package:p1/features/Profile/presentation/widgets/profile_table_dash.dart';

class DashBoardWidget extends StatelessWidget {
  const DashBoardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: AppColors.darkblue,
          width: 1,
        ),
      ),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            width: context.width / 3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: AppColors.darkblue,
                width: 1,
              ),
            ),
            child: const InfoProfile(),
          ),
          const ProfileTableDash(),
        ],
      ),
    );
  }
}
