import 'package:flutter/material.dart';
import 'package:syncfusion_charts/charts/base_page.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CircularRadialChart extends StatefulWidget {
  const CircularRadialChart({super.key});

  @override
  State<CircularRadialChart> createState() => _CircularRadialChartState();
}

class _CircularRadialChartState extends State<CircularRadialChart> {
  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData('David', 25),
      ChartData('Steve', 38),
      ChartData('Jack', 34),
      ChartData('Others', 52)
    ];
    return BasePage(
        body: Center(
            child: SfCircularChart(
                palette: Colors.primaries,
                legend: Legend(
                    isResponsive: true,
                    isVisible: true,
                    toggleSeriesVisibility: true,
                    overflowMode: LegendItemOverflowMode.wrap,
                    position: LegendPosition.auto,
                    borderColor: Colors.grey[300],
                    borderWidth: 1,
                    title: const LegendTitle(text: 'Name')),
                tooltipBehavior: TooltipBehavior(
                    animationDuration: 3,
                    enable: true,
                    color: Colors.blue[900]),
                series: <CircularSeries>[
                  // Renders radial bar chart
                  RadialBarSeries<ChartData, String>(
                      dataSource: chartData,
                      xValueMapper: (ChartData data, _) => data.x,
                      yValueMapper: (ChartData data, _) => data.y
                  )
                ]
            )
        ), title: 'Circular radial chart',
    );
  }
}
  class ChartData {
  ChartData(this.x, this.y);
  final String x;
  final double y;
  }
