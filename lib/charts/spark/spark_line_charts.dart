import 'package:flutter/material.dart';
import 'package:syncfusion_charts/charts/base_page.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class SparkLineChart extends StatefulWidget {
  const SparkLineChart({super.key});

  @override
  State<SparkLineChart> createState() => _SparkLineChartState();
}

class _SparkLineChartState extends State<SparkLineChart> {
  @override
  Widget build(BuildContext context) {
    return BasePage(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
            child: SfSparkLineChart(
          labelDisplayMode: SparkChartLabelDisplayMode.all,
          trackball: SparkChartTrackball(
              backgroundColor: Colors.red.withOpacity(0.8),
              borderColor: Colors.red.withOpacity(0.8),
              borderWidth: 2,
              color: Colors.red,
              labelStyle: const TextStyle(color: Colors.black),
              activationMode: SparkChartActivationMode.tap),
          axisLineWidth: 0,
          data: const <double>[
            5,
            6,
            5,
            7,
            4,
            3,
            9,
            5,
            6,
            5,
            7,
            8,
            4,
            5,
            3,
            4,
            11,
            10,
            2,
            12,
            4,
            7,
            6,
            8
          ],
          highPointColor: Colors.red,
          lowPointColor: Colors.red,
          firstPointColor: Colors.orange,
          lastPointColor: Colors.orange,
          width: 3,
          marker: const SparkChartMarker(
              displayMode: SparkChartMarkerDisplayMode.high),
        )),
      ),
      title: 'Spark line chart',
    );
  }
}
