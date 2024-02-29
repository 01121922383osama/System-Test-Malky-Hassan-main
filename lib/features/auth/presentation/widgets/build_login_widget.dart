import 'package:flutter/material.dart';
import '../../../../config/routes/router_name.dart';
import '../../../../core/constant/app_colors.dart';
import '../../../../core/extension/extension.dart';
import '../../../../core/styles/styles.dart';
import '../../../../core/widgets/custom_text_field_widget.dart';

class BuildLoginWidget extends StatelessWidget {
  const BuildLoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        Text(
          'Login \nWelcome back, please login to your account.',
          style: textStyle.copyWith(
            color: AppColors.darkblue,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20),
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.darkblue,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: const CustomTextFieldWidget(
            prefixIcon: Icon(
              Icons.email,
              color: AppColors.darkblue,
            ),
          ),
        ),
        const SizedBox(height: 20),
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.darkblue,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: const CustomTextFieldWidget(
            prefixIcon: Icon(
              Icons.lock,
              color: AppColors.darkblue,
            ),
          ),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Checkbox(
                  value: true,
                  onChanged: (value) {},
                ),
                const Text('Remember me'),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.darkblue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              onPressed: () {
                context.pushNameRemoveUntil(routeName: AppRouter.appPage);
              },
              child: Text(
                'Login',
                style: textStyle.copyWith(
                  color: AppColors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
