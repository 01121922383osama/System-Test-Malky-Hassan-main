import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:p1/core/constant/app_colors.dart';
import 'package:p1/features/dashboard/presentation/cubit/themes/themes_app_cubit.dart';

class BuildDropDownButtomSearchWidget extends StatelessWidget {
  final List<dynamic> list;
  final String hintText;
  const BuildDropDownButtomSearchWidget(
      {super.key, required this.list, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemesAppCubit, bool>(
      builder: (context, state) {
        return CustomDropdown.search(
          excludeSelected: false,
          items: list,
          hintText: hintText,
          hintBuilder: (context, hint, state) {
            return Text(
              hint,
              style: TextStyle(
                color: state ? AppColors.white : AppColors.dark,
                fontWeight: FontWeight.normal,
              ),
            );
          },
          decoration: CustomDropdownDecoration(
            closedFillColor: state
                ? AppColors.dark.withOpacity(0.5)
                : Colors.white.withOpacity(0.5),
            closedBorder: Border.all(
              color: state
                  ? AppColors.white.withOpacity(0.5)
                  : AppColors.dark.withOpacity(0.5),
            ),
            headerStyle: TextStyle(
              color: state ? AppColors.white : AppColors.dark,
            ),
            hintStyle: TextStyle(
              color: state ? AppColors.dark : AppColors.dark,
            ),
            listItemStyle: TextStyle(
              color: state ? AppColors.dark : AppColors.dark,
            ),
            searchFieldDecoration: SearchFieldDecoration(
              hintStyle: TextStyle(
                color: state ? AppColors.dark : AppColors.dark,
              ),
              textStyle: TextStyle(
                color: state ? AppColors.dark : AppColors.dark,
              ),
            ),
            expandedFillColor: state ? AppColors.white : AppColors.white,
          ),
          onChanged: (value) {},
        );
      },
    );
  }
}
