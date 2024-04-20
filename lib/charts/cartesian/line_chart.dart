import 'package:flutter/material.dart';
import 'package:syncfusion_charts/charts/base_page.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class LineChart extends StatefulWidget {
  const LineChart({Key? key}) : super(key: key);

  @override
  LineChartState createState() => LineChartState();
}

class LineChartState extends State<LineChart> {
  @override
  Widget build(BuildContext context) {
    return BasePage(
      body: Center(
          child: SfCartesianChart(
              primaryXAxis: const CategoryAxis(),
              series: <CartesianSeries>[
            LineSeries<ChartData, String>(
                dataSource: [
                  ChartData('Jan', 35, Colors.red),
                  ChartData('Feb', 28, Colors.green),
                  ChartData('Mar', 34, Colors.blue),
                  ChartData('Apr', 32, Colors.pink),
                  ChartData('May', 40, Colors.black)
                ],
                dataLabelSettings: const DataLabelSettings(
                    isVisible: true,
                    labelPosition: ChartDataLabelPosition.outside),
                // Bind the color for all the data points from the data source
                pointColorMapper: (ChartData data, _) => data.color,
                xValueMapper: (ChartData data, _) => data.x,
                yValueMapper: (ChartData data, _) => data.y)
          ])), title: 'Line chart',
    );
  }
}

class ChartData {
  ChartData(this.x, this.y, this.color);
  final String x;
  final double y;
  final Color color;
}
