import 'package:flutter/material.dart';
import 'package:syncfusion_charts/charts/base_page.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class SparkBarChart extends StatefulWidget {
  const SparkBarChart({super.key});

  @override
  State<SparkBarChart> createState() => _SparkBarChartState();
}

class _SparkBarChartState extends State<SparkBarChart> {
  @override
  Widget build(BuildContext context) {
    return BasePage(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: SfSparkBarChart(
            labelDisplayMode: SparkChartLabelDisplayMode.all,
            data: const <double>[10, 6, 8, -5, 11, 5, -2, 7, -3, 6, 8, 10],
            highPointColor: Colors.red,
            lowPointColor: Colors.green,
            firstPointColor: Colors.orange,
            lastPointColor: Colors.orange,
            trackball: SparkChartTrackball(
                backgroundColor: Colors.red.withOpacity(0.8),
                borderColor: Colors.red.withOpacity(0.8),
                borderWidth: 2,
                color: Colors.red,
                labelStyle: const TextStyle(color: Colors.black),
                activationMode: SparkChartActivationMode.tap),
          ),
        ),
      ),
      title: 'Spark bar chart',
    );
  }
}
