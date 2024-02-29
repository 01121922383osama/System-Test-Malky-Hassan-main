import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatelessWidget {
  final Widget? prefixIcon;
  final String hintText;
  const CustomTextFieldWidget(
      {super.key, this.prefixIcon, this.hintText = 'Search...'});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      decoration: InputDecoration(
        hintText: hintText,
        border: InputBorder.none,
        prefixIcon: prefixIcon,
      ),
      obscureText: hintText == 'Password',
    );
  }
}
