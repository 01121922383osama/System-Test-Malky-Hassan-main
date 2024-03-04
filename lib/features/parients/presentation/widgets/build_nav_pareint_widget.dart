import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constant/app_colors.dart';
import '../../../../core/extension/extension.dart';
import '../../../../core/widgets/custom_text_field_widget.dart';
import 'build_pop_menu.dart';

class BuildNavPareintWidget extends StatelessWidget {
  const BuildNavPareintWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: _calculateCrossAxisCount(context),
        childAspectRatio: _calculateChildAspectRatio(context),
      ),
      itemCount: 4,
      itemBuilder: (context, index) {
        return Container(
          padding: const EdgeInsets.all(5),
          margin: const EdgeInsets.all(5),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: AppColors.darkblue.withOpacity(0.5)),
          ),
          child: _widgets[index],
        );
      },
    );
  }
}

List<Widget> _widgets = [
  const BuildPopMenuButtonWidget(
      initialText: '25', itemList: ['25', '50', '100']),
  const BuildPopMenuButtonWidget(
      initialText: 'All', itemList: ['All', 'Active', 'Suspend']),
  const CustomTextFieldWidget(),
  Align(
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      onPressed: () {},
      child: const Text('Add'),
    ),
  ),
];

int _calculateCrossAxisCount(BuildContext context) {
  if (!context.isMobile) {
    return 2;
  } else if (context.isDesktop) {
    return 4;
  } else if (!context.isTablet) {
    return 2;
  } else {
    return 4;
  }
}

double _calculateChildAspectRatio(BuildContext context) {
  if (!context.isMobile) {
    return 3.h;
  }
  if (!context.isTablet) {
    return 6;
  }
  if (context.isDesktop) {
    return 4.h;
  } else {
    return 4;
  }
}
