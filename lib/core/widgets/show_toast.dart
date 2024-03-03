import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';

toastInfo(
  BuildContext context, {
  required String msg,
  Color backGroundColor = Colors.black,
  Color textColor = Colors.white,
}) {
  return showToastWidget(
    Container(
      padding: const EdgeInsets.all(15),
      decoration: const BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Text(
        msg,
        style: const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 16,
        ),
      ),
    ),
    context: context,
    alignment: Alignment.center,
    curve: Curves.linearToEaseOut,
  );
}
