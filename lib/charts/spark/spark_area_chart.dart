import 'package:flutter/material.dart';
import 'package:syncfusion_charts/charts/base_page.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class SparkAreaChart extends StatefulWidget {
  const SparkAreaChart({Key? key}) : super(key: key);

  @override
  SparkAreaChartState createState() => SparkAreaChartState();
}

class SparkAreaChartState extends State<SparkAreaChart> {
  @override
  Widget build(BuildContext context) {
    return BasePage(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
            child: SfSparkAreaChart(
          labelDisplayMode: SparkChartLabelDisplayMode.all,
          trackball: SparkChartTrackball(
              backgroundColor: Colors.red.withOpacity(0.8),
              borderColor: Colors.red.withOpacity(0.8),
              borderWidth: 2,
              color: Colors.red,
              labelStyle: const TextStyle(color: Colors.black),
              activationMode: SparkChartActivationMode.tap),
          data: const <double>[34, 36, 32, 35, 40, 38, 33, 37, 34, 31, 30],
          borderColor: Colors.red.withOpacity(0.8),
          borderWidth: 2,
          marker: const SparkChartMarker(
              displayMode: SparkChartMarkerDisplayMode.high),
        )),
      ),
      title: 'Spark area chart',
    );
  }
}
