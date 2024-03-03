import 'package:flutter/material.dart';
import 'package:p1/core/extension/extension.dart';

class BuildNavPareintWidget extends StatelessWidget {
  const BuildNavPareintWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: _calculateCrossAxisCount(context),
        childAspectRatio: _calculateChildAspectRatio(context),
      ),
      itemCount: 4,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.all(5),
          color: Colors.red,
        );
      },
    );
  }
}

int _calculateCrossAxisCount(BuildContext context) {
  if (!context.isMobile) {
    return 2;
  } else if (context.isDesktop) {
    return 4;
  } else if (!context.isTablet) {
    return 2;
  } else {
    return 4;
  }
}

double _calculateChildAspectRatio(BuildContext context) {
  if (!context.isMobile) {
    return 4.5;
  }
  if (!context.isTablet) {
    return 6;
  }
  if (context.isDesktop) {
    return 6;
  } else {
    return 5;
  }
}
