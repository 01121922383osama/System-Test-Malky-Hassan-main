import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:p1/features/Profile/presentation/widgets/build_table_profile_dashboard_widget.dart';

import '../../../../core/constant/app_colors.dart';
import '../../../../core/extension/extension.dart';
import 'info_profile_dash_widget.dart';
import 'profile_table_dash.dart';

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
      child: !context.isMobile && !context.isTablet
          ? const MobileWidget()
          : const DeskTopTabletWidget(),
    );
  }
}

class MobileWidget extends StatelessWidget {
  const MobileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Column(
        children: [
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () => _showDialog(context),
            child: const Text('More'),
          ),
          Container(
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
        ],
      ),
    );
  }
}

class DeskTopTabletWidget extends StatelessWidget {
  const DeskTopTabletWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.all(10),
          width: context.width / 4,
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
    );
  }
}

void _showDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog.adaptive(
        title: const Text('Osama Nabil'),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: List.generate(11, (index) {
              return ListTile(
                title: Text(_texts[index]),
                subtitle: Text(_subText[index]),
              );
            }),
          ),
        ),
      );
    },
  );
}

List<String> _texts = [
  'Gender',
  'Parent',
  'Time',
  'Country',
  'Phone',
  'Email',
  'Joined',
  'Birthday',
  'Students',
  'Hours',
  '\$ Total Payments'
];

List<String> _subText = [
  'Male',
  'Parent',
  (DateFormat().add_yMEd().format(DateTime.now())),
  'United States of America (the)',
  '01147566910',
  'osama@gmail.com',
  'Tue 05 Oct 2021',
  '3 / 10 / 2002',
  '0',
  '8',
  '\$150'
];
