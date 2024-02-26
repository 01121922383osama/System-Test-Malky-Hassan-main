import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class BuildCirleChartsWidget extends StatelessWidget {
  const BuildCirleChartsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SfCircularChart(
      legend: const Legend(
        isVisible: true,
        position: LegendPosition.bottom,
        overflowMode: LegendItemOverflowMode.scroll,
        isResponsive: true,
        title: LegendTitle(
          text: 'Courses',
        ),
      ),
      tooltipBehavior: TooltipBehavior(enable: true),
      series: <CircularSeries>[
        DoughnutSeries<Courses, String>(
          dataSource: getCourses,
          xValueMapper: (datum, _) => datum.text,
          yValueMapper: (datum, _) => datum.percint,
          dataLabelSettings: const DataLabelSettings(
            isVisible: true,
          ),
          enableTooltip: true,
        ),
      ],
    );
  }
}

List<Courses> getCourses = [
  Courses(
    text: 'Total',
    percint: 100,
  ),
];

class Courses {
  final String text;
  final int percint;

  Courses({
    required this.text,
    required this.percint,
  });
}
