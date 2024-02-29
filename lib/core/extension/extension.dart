import 'package:flutter/material.dart';

extension ScreenUTILS on BuildContext {
  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;
  double get screenWidth => MediaQuery.of(this).size.width;
  double get screenHeight => MediaQuery.of(this).size.height;
  bool get isMobile => MediaQuery.of(this).size.width > 550;
  bool get isTablet => MediaQuery.of(this).size.width > 768;
  bool get isDesktop => MediaQuery.of(this).size.width > 1024;
  bool get isWebBrowser => MediaQuery.of(this).size.width > 2048;
}

extension Navigation on BuildContext {
  void pushNameRemoveUntil({required String routeName}) {
    Navigator.of(this).pushNamedAndRemoveUntil(
      routeName,
      (route) => false,
    );
  }
}
