import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  final ButtonStyle? style;
  final TextStyle? textStyle;
  const CustomButtonWidget({
    super.key,
    this.onPressed,
    required this.text,
    this.style,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: style,
      onPressed: onPressed,
      child: Text(
        text,
        style: textStyle,
      ),
    );
  }
}
