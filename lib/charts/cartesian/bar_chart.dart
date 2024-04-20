import 'package:flutter/material.dart';
import 'package:syncfusion_charts/charts/base_page.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class BarChart extends StatefulWidget {
  const BarChart({super.key});

  @override
  State<BarChart> createState() => _BarChartState();
}

class _BarChartState extends State<BarChart> {
  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData(1, 35),
      ChartData(2, 23),
      ChartData(3, 34),
      ChartData(4, 25),
      ChartData(5, 40)
    ];
    return BasePage(
      body: Center(
          child: SfCartesianChart(series: <CartesianSeries>[
        // Renders bar chart
        BarSeries<ChartData, double>(
            dataLabelSettings: const DataLabelSettings(
                isVisible: true,
                labelPosition: ChartDataLabelPosition.outside),
            dataSource: chartData,
            xValueMapper: (ChartData data, _) => data.x,
            yValueMapper: (ChartData data, _) => data.y)
      ])),
      title: 'Bar chart',
    );
  }
}

class ChartData {
  ChartData(this.x, this.y);
  final double x;
  final double y;
}
