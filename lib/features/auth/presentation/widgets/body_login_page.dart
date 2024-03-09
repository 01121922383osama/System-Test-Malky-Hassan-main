import 'package:flutter/material.dart';

import '../../../../core/extension/extension.dart';
import 'build_login_widget.dart';

class BodyLoginPage extends StatelessWidget {
  const BodyLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        image: const DecorationImage(
          image: AssetImage('assets/login.png'),
          opacity: 0.2,
          fit: BoxFit.cover,
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
    return 5;
  } else if (!context.isTablet) {
    return 100;
  } else if (context.isDesktop) {
    return 100;
  } else {
    return 100;
  }
}
