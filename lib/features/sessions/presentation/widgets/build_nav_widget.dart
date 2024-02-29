import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/constant/app_colors.dart';
import '../../../../core/extension/extension.dart';
import '../../../../core/widgets/custom_text_field_widget.dart';
import '../../../dashboard/presentation/cubit/themes/themes_app_cubit.dart';
import 'build_custom_pop_menu.dart';

class BuidlNavWidgets extends StatelessWidget {
  const BuidlNavWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: _calculateCrossAxisCount(context),
        childAspectRatio: _calculateChildAspectRatio(context),
      ),
      itemCount: 6,
      itemBuilder: (context, index) {
        return BlocBuilder<ThemesAppCubit, bool>(
          builder: (context, state) {
            return Container(
              margin: const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: state
                    ? AppColors.dark
                    : index == 5
                        ? AppColors.darkblue
                        : Colors.white,
                border: Border.all(
                  color: AppColors.darkblue,
                  width: 1,
                ),
              ),
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: widgets[index],
            );
          },
        );
      },
    );
  }
}

int _calculateCrossAxisCount(BuildContext context) {
  if (!context.isMobile) {
    return 2;
  } else if (context.isDesktop) {
    return 6;
  } else if (!context.isTablet) {
    return 3;
  } else {
    return 4;
  }
}

double _calculateChildAspectRatio(BuildContext context) {
  if (!context.isMobile) {
    return 4.5;
  }
  if (!context.isTablet) {
    return 4;
  }
  if (context.isDesktop) {
    return 4;
  } else {
    return 5;
  }
}

List<Widget> widgets = [
  const BuildCustomPopMenuWidget(text: '25'),
  const BuildCustomPopMenuWidget(text: 'All'),
  const BuildCustomPopMenuWidget(text: 'All Staf'),
  const CustomTextFieldWidget(),
  const Text('Upcoming'),
  const Text('Past'),
];
