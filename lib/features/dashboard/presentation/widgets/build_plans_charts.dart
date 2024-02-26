import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class BuildPlansChartsWidget extends StatelessWidget {
  const BuildPlansChartsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SfCircularChart(
      legend: const Legend(
        isVisible: true,
        position: LegendPosition.bottom,
        overflowMode: LegendItemOverflowMode.scroll,
        isResponsive: true,
        title: LegendTitle(
          text: 'Plans',
        ),
      ),
      enableMultiSelection: true,
      tooltipBehavior: TooltipBehavior(enable: true),
      series: <CircularSeries>[
        PieSeries<Plans, String>(
          dataSource: getPlans,
          xValueMapper: (datum, _) => datum.plan,
          yValueMapper: (datum, _) => datum.percent,
          dataLabelSettings: const DataLabelSettings(
            isVisible: true,
            overflowMode: OverflowMode.trim,
            useSeriesColor: true,
            labelIntersectAction: LabelIntersectAction.shift,
            alignment: ChartAlignment.center,
          ),
          enableTooltip: true,
          explode: true,
          explodeAll: true,
          emptyPointSettings: const EmptyPointSettings(
            mode: EmptyPointMode.drop,
          ),
        ),
      ],
    );
  }
}

List<Plans> getPlans = [
  Plans(plan: ' Custom plan', percent: 17),
  Plans(plan: 'One Trial 3+', percent: 575),
  Plans(plan: 'Plan A', percent: 409),
  Plans(plan: 'Plan B', percent: 1215),
  Plans(plan: 'Plan C', percent: 597),
  Plans(plan: 'Plan D', percent: 233),
  Plans(plan: 'Plan E', percent: 367),
  Plans(plan: 'Two Trials 2', percent: 309),
];

class Plans {
  final String plan;
  final int percent;

  Plans({
    required this.plan,
    required this.percent,
  });
}
