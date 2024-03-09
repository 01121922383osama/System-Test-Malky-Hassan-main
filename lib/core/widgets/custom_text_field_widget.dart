import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatelessWidget {
  final Widget? prefixIcon;
  final String hintText;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  const CustomTextFieldWidget({
    super.key,
    this.prefixIcon,
    this.hintText = 'Search...',
    this.suffixIcon,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      decoration: InputDecoration(
        alignLabelWithHint: true,
        hintText: hintText,
        border: InputBorder.none,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
      ),
      keyboardType: keyboardType,
      obscureText: hintText == 'Password',
    );
  }
}
