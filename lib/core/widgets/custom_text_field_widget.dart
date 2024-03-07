import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatelessWidget {
  final Widget? prefixIcon;
  final String hintText;
  final Widget? suffixIcon;
  const CustomTextFieldWidget({
    super.key,
    this.prefixIcon,
    this.hintText = 'Search...',
    this.suffixIcon,
  });

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
        suffixIcon: suffixIcon,
      ),
      obscureText: hintText == 'Password',
    );
  }
}
