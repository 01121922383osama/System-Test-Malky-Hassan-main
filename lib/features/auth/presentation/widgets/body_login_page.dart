import 'package:flutter/material.dart';
import 'package:p1/core/constant/app_colors.dart';
import 'package:p1/core/extension/extension.dart';
import 'package:p1/features/auth/presentation/widgets/build_login_widget.dart';

class BodyLoginPage extends StatelessWidget {
  const BodyLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(5),
        image: const DecorationImage(
          image: AssetImage('assets/login.png'),
          opacity: 0.3,
          fit: BoxFit.contain,
        ),
      ),
      padding: const EdgeInsets.all(20),
      margin: EdgeInsets.all(_culcolateMargin(context)),
      child: const BuildLoginWidget(),
    );
  }
}

double _culcolateMargin(BuildContext context) {
  if (!context.isMobile) {
    return 50;
  } else if (!context.isTablet) {
    return 100;
  } else if (context.isDesktop) {
    return 200;
  } else {
    return 150;
  }
}
