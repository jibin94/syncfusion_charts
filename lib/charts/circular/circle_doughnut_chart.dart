import 'package:flutter/material.dart';
import 'package:syncfusion_charts/charts/base_page.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CircleDoughnutChart extends StatefulWidget {
  const CircleDoughnutChart({Key? key}) : super(key: key);

  @override
  CircleDoughnutChartState createState() => CircleDoughnutChartState();
}

class CircleDoughnutChartState extends State<CircleDoughnutChart> {
  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData('David', 25, const Color.fromRGBO(9, 0, 136, 1)),
      ChartData('Steve', 38, const Color.fromRGBO(147, 0, 119, 1)),
      ChartData('Jack', 34, const Color.fromRGBO(228, 0, 124, 1)),
      ChartData('Others', 52, const Color.fromRGBO(255, 189, 57, 1))
    ];
    return BasePage(
      body: Center(
        child: SfCircularChart(
          legend: Legend(
              isResponsive: true,
              isVisible: true,
              toggleSeriesVisibility: true,
              overflowMode: LegendItemOverflowMode.wrap,
              position: LegendPosition.auto,
              borderColor: Colors.grey[300],
              borderWidth: 1,
              title: const LegendTitle(text: 'Name')),
          series: <CircularSeries>[
            // Renders doughnut chart
            DoughnutSeries<ChartData, String>(
                explode: true,
                explodeIndex: 1,
                dataSource: chartData,
                enableTooltip: true,
                dataLabelSettings: const DataLabelSettings(
                    isVisible: true,
                    labelPosition: ChartDataLabelPosition.outside),
                pointColorMapper: (ChartData data, _) => data.color,
                xValueMapper: (ChartData data, _) => data.x,
                yValueMapper: (ChartData data, _) => data.y),
          ],
        ),
      ),
      title: 'Circle doughnut chart',
    );
  }
}

class ChartData {
  ChartData(this.x, this.y, this.color);
  final String x;
  final double y;
  final Color color;
}
