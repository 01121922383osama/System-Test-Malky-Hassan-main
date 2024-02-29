import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatelessWidget {
  final Widget? prefixIcon;
  const CustomTextFieldWidget({super.key, this.prefixIcon});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      decoration: InputDecoration(
        hintText: 'Search...',
        border: InputBorder.none,
        prefixIcon: prefixIcon,
      ),
    );
  }
}
