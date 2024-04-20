import 'package:flutter/material.dart';
import 'package:syncfusion_charts/charts/base_page.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class AreaChart extends StatefulWidget {
  const AreaChart({super.key});

  @override
  AreaChartState createState() => AreaChartState();
}

class AreaChartState extends State<AreaChart> {
  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData(2020, 35),
      ChartData(2021, 28),
      ChartData(2022, 34),
      ChartData(2023, 32),
      ChartData(2024, 40)
    ];
    return BasePage(
      body: Center(
        child: SfCartesianChart(
          series: <CartesianSeries>[
            // Renders area chart
            AreaSeries<ChartData, int>(
                dataLabelSettings: const DataLabelSettings(
                    isVisible: true, showCumulativeValues: true),
                dataSource: chartData,
                xValueMapper: (ChartData data, _) => data.x,
                yValueMapper: (ChartData data, _) => data.y)
          ],
        ),
      ),
      title: 'Area chart',
    );
  }
}

class ChartData {
  ChartData(this.x, this.y);
  final int x;
  final double y;
}
