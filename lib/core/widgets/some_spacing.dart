import 'package:flutter/material.dart';

Widget someSpacing({double? height = 10}) {
  return SliverToBoxAdapter(
    child: SizedBox(height: height),
  );
}
