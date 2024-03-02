import 'package:flutter/material.dart';
import '../../../../core/constant/app_colors.dart';
import '../widgets/body_login_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.lightPurple,
      body: BodyLoginPage(),
    );
  }
}
