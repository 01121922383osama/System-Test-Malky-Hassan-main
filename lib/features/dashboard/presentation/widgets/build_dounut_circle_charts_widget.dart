import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CustomDoughnutCircleChartsWidget extends StatelessWidget {
  const CustomDoughnutCircleChartsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SfCircularChart(
      legend: const Legend(
        isVisible: true,
        position: LegendPosition.bottom,
        overflowMode: LegendItemOverflowMode.scroll,
        isResponsive: true,
        title: LegendTitle(
          text: 'Gender',
        ),
      ),
      tooltipBehavior: TooltipBehavior(enable: true),
      series: <CircularSeries>[
        DoughnutSeries<Gender, String>(
          radius: '110%',
          dataSource: gender,
          xValueMapper: (datum, _) => datum.gender,
          yValueMapper: (datum, _) => datum.number,
          dataLabelSettings: const DataLabelSettings(
            isVisible: true,
          ),
          enableTooltip: true,
        ),
      ],
    );
  }
}

Widget buildCahrts({String? title}) {
  return SfCircularChart(
    legend: Legend(
      isVisible: true,
      position: LegendPosition.bottom,
      overflowMode: LegendItemOverflowMode.scroll,
      isResponsive: true,
      title: LegendTitle(
        text: title == null ? '' : 'Gender',
      ),
    ),
    tooltipBehavior: TooltipBehavior(enable: true),
    series: <CircularSeries>[
      PieSeries<Gender, String>(
        dataSource: gender,
        xValueMapper: (datum, _) => datum.gender,
        yValueMapper: (datum, _) => datum.number,
        dataLabelSettings: const DataLabelSettings(
          isVisible: true,
        ),
        enableTooltip: true,
      ),
    ],
  );
}

List<Gender> gender = [
  Gender(
    number: 60,
    gender: 'male',
  ),
  Gender(
    number: 40,
    gender: 'female',
  ),
];

class Gender {
  final String gender;
  final int number;
  Gender({
    required this.number,
    required this.gender,
  });
}
