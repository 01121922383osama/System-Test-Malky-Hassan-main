import 'package:flutter/material.dart';

Widget someSpacing({double? height = 10}) {
  return SliverToBoxAdapter(
    child: SizedBox(height: height),
  );
}


class BuildDividerWidget extends StatelessWidget {
  final Color? color;
  final double? thickness;
  const BuildDividerWidget({super.key, this.color, this.thickness});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Divider(
        color: color,
        thickness: thickness,
      ),
    );
  }
}
