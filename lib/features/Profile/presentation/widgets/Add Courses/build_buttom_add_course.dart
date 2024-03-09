import 'package:flutter/material.dart';
import 'package:p1/core/constant/app_colors.dart';

class BuildButtomAddCourse extends StatelessWidget {
  const BuildButtomAddCourse({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: AppColors.darkblue.withOpacity(0.5),
      radius: 10,
      borderRadius: BorderRadius.circular(10),
      onTap: () {},
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.darkblue.withOpacity(0.3),
        ),
        child: const Text('Add'),
      ),
    );
  }
}
