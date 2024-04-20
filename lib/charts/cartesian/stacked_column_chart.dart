import 'package:flutter/material.dart';
import 'package:syncfusion_charts/charts/base_page.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class StackedColumnCharts extends StatefulWidget {
  const StackedColumnCharts({super.key});

  @override
  StackedColumnChartsState createState() => StackedColumnChartsState();
}

class StackedColumnChartsState extends State<StackedColumnCharts> {
  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData('China', 12, 10, 14, 20),
      ChartData('USA', 14, 11, 18, 23),
      ChartData('UK', 16, 10, 15, 20),
      ChartData('Brazil', 18, 16, 18, 24)
    ];

    return BasePage(
      title: 'Stacked column chart',
      body: Center(
        child: SfCartesianChart(
          primaryXAxis: const CategoryAxis(),
          series: <CartesianSeries>[
            StackedColumnSeries<ChartData, String>(
                dataLabelSettings: const DataLabelSettings(
                    isVisible: true, showCumulativeValues: true),
                dataSource: chartData,
                xValueMapper: (ChartData data, _) => data.x,
                yValueMapper: (ChartData data, _) => data.y1),
            StackedColumnSeries<ChartData, String>(
                dataLabelSettings: const DataLabelSettings(
                    isVisible: true, showCumulativeValues: true),
                dataSource: chartData,
                xValueMapper: (ChartData data, _) => data.x,
                yValueMapper: (ChartData data, _) => data.y2),
            StackedColumnSeries<ChartData, String>(
                dataLabelSettings: const DataLabelSettings(
                    isVisible: true, showCumulativeValues: true),
                dataSource: chartData,
                xValueMapper: (ChartData data, _) => data.x,
                yValueMapper: (ChartData data, _) => data.y3),
            StackedColumnSeries<ChartData, String>(
                dataLabelSettings: const DataLabelSettings(
                    isVisible: true, showCumulativeValues: true),
                dataSource: chartData,
                xValueMapper: (ChartData data, _) => data.x,
                yValueMapper: (ChartData data, _) => data.y4)
          ],
        ),
      ),
    );
  }
}

class ChartData {
  ChartData(this.x, this.y1, this.y2, this.y3, this.y4);
  final String x;
  final double y1;
  final double y2;
  final double y3;
  final double y4;
}
