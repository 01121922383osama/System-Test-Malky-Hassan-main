import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:p1/core/extension/extension.dart';
import 'package:p1/core/styles/styles.dart';
import 'package:p1/features/dashboard/presentation/cubit/themes/themes_app_cubit.dart';

class BuildTotalInfoWidget extends StatelessWidget {
  const BuildTotalInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: _calculateCrossAxisCount(context),
        childAspectRatio: _calculateChildAspectRatio(context),
      ),
      itemCount: _titles.length,
      itemBuilder: (context, index) {
        return BlocBuilder<ThemesAppCubit, bool>(
          builder: (context, state) {
            return Container(
              padding: const EdgeInsets.all(5),
              alignment: Alignment.center,
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: state ? Colors.black87 : Colors.white,
              ),
              child: _buildContent(index: index),
            );
          },
        );
      },
    );
  }
}

List<String> _titles = [
  'All Sessions',
  'Attended',
  'Canceled By Student',
  'Canceled By Tutor',
  'Absent By Student',
  'Absent By Tutor',
];

List<IconData> _icons = [
  Icons.calendar_today,
  Icons.check_circle,
  Icons.cancel,
  Icons.cancel,
  Icons.warning,
  Icons.warning,
];

List<Color> _colors = [
  Colors.blue,
  Colors.green,
  Colors.red,
  Colors.red,
  Colors.orange,
  Colors.orange,
];

List<int> _numbers = [
  31833,
  18069,
  775,
  529,
  2415,
  189,
];

Widget _buildContent({required int index}) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      CircleAvatar(
        child: Icon(
          _icons[index],
          color: _colors[index],
        ),
      ),
      Text(
        _numbers[index].toString(),
        style: textStyle.copyWith(
          color: _colors[index],
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
      ),
      Text(
        _titles[index],
        style: textStyle.copyWith(
          color: _colors[index],
          fontWeight: FontWeight.w500,
          fontSize: 13,
        ),
      ),
    ],
  );
}

double _calculateChildAspectRatio(BuildContext context) {
  if (!context.isMobile) {
    return 1.4;
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

int _calculateCrossAxisCount(BuildContext context) {
  if (!context.isMobile) {
    return 2;
  } else if (context.isDesktop) {
    return 4;
  } else if (!context.isTablet) {
    return 2;
  } else {
    return 2;
  }
}
