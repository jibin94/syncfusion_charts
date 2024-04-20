import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../base_page.dart';

class CircularPieChart extends StatefulWidget {
  const CircularPieChart({super.key});

  @override
  CircularPieChartState createState() => CircularPieChartState();
}

class CircularPieChartState extends State<CircularPieChart> {
  @override
  Widget build(BuildContext context) {
    return BasePage(
      title: 'Circular Chart',
      body: SizedBox(
          height: 500,
          child: Center(
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 4,
                  child: SfCircularChart(
                    legend: Legend(
                        isResponsive: true,
                        isVisible: true,
                        toggleSeriesVisibility: true,
                        overflowMode: LegendItemOverflowMode.wrap,
                        position: LegendPosition.auto,
                        borderColor: Colors.grey[300],
                        borderWidth: 1,
                        title: const LegendTitle(text: 'Months')),
                    tooltipBehavior: TooltipBehavior(
                        animationDuration: 3,
                        enable: true,
                        color: Colors.blue[900]),
                    palette: Colors.primaries,
                    series: <CircularSeries>[
                      PieSeries<MonthData, String>(
                          dataSource: [
                            MonthData('Jan', 35),
                            MonthData('Feb', 20),
                            MonthData('Mar', 15),
                            MonthData('Apr', 10),
                            MonthData('May', 20),
                            MonthData('Jun', 25)
                          ],
                          pointColorMapper: (MonthData data, _) => data.color,
                          xValueMapper: (MonthData data, _) => data.month,
                          yValueMapper: (MonthData data, _) => data.value,
                          opacity: 0.8,
                          explode: true,
                          explodeIndex: 1,
                          dataLabelSettings: const DataLabelSettings(
                              isVisible: true,
                              labelPosition: ChartDataLabelPosition.outside),
                          enableTooltip: true,
                          name: 'Data'),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}

class MonthData {
  final String month;
  final double value;
  final Color? color;
  final String? other;

  MonthData(this.month, this.value, [this.color, this.other]);
}
