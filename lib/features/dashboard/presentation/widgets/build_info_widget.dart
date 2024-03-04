import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constant/app_colors.dart';
import '../../../../core/extension/extension.dart';
import '../../../../core/styles/styles.dart';
import '../cubit/themes/themes_app_cubit.dart';

class BuildInfoWidget extends StatelessWidget {
  const BuildInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: _calculateCrossAxisCount(context),
        childAspectRatio: _calculateChildAspectRatio(context),
      ),
      itemCount: 4,
      itemBuilder: (context, index) {
        return BlocBuilder<ThemesAppCubit, bool>(
          builder: (context, state) {
            return _buildTutlesDashboard(
              index: index,
              state: state,
            );
          },
        );
      },
    );
  }
}

Widget _buildTutlesDashboard({
  required int index,
  required dynamic state,
}) {
  return Container(
    alignment: Alignment.center,
    margin: const EdgeInsets.all(15),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: state ? AppColors.dark : Colors.white,
    ),
    child: ListTile(
      enabled: true,
      onTap: () {},
      visualDensity: VisualDensity.adaptivePlatformDensity,
      leading: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '${_numbers[index]}',
            style: textStyle.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          FittedBox(
            child: Text(
              _titles[index],
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
      trailing: CircleAvatar(
        backgroundColor: AppColors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: _icons[index],
        ),
      ),
    ),
  );
}

int _calculateCrossAxisCount(BuildContext context) {
  if (!context.isMobile) {
    return 1;
  } else if (context.isDesktop) {
    return 4;
  } else if (!context.isTablet) {
    return 2;
  } else {
    return 2;
  }
}

double _calculateChildAspectRatio(BuildContext context) {
  if (!context.isMobile) {
    return 3.8;
  }
  if (!context.isTablet) {
    return 2.6;
  }
  if (context.isDesktop) {
    return 2.4;
  } else {
    return 3;
  }
}

List<String> _titles = [
  'New Client',
  'Trials',
  'Students',
  'Parents',
];

List _numbers = [
  2,
  998,
  583,
  713,
];

List<Icon> _icons = [
  const Icon(
    Icons.person_add,
    color: Colors.blueAccent,
  ),
  const Icon(
    Icons.assignment,
    color: Colors.green,
  ),
  const Icon(
    Icons.person,
    color: Colors.red,
  ),
  const Icon(
    Icons.person,
    color: Colors.orange,
  ),
];
