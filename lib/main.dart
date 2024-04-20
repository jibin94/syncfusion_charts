import 'package:flutter/material.dart';
import 'package:syncfusion_charts/charts/circular/circular_radial_bar_chart.dart';
import 'package:syncfusion_charts/charts/spark/spark_bar_chart.dart';
import 'package:syncfusion_charts/charts/spark/spark_line_charts.dart';

import 'charts/cartesian/area_chart.dart';
import 'charts/cartesian/bar_chart.dart';
import 'charts/cartesian/column_chart.dart';
import 'charts/cartesian/line_chart.dart';
import 'charts/circular/circle_doughnut_chart.dart';
import 'charts/circular/circular_pie_chart.dart';
import 'charts/spark/spark_area_chart.dart';
import 'charts/cartesian/stacked_column_chart.dart';
import 'charts/widgets/button.dart';

void main() {
  return runApp(const ChartApp());
}

class ChartApp extends StatelessWidget {
  const ChartApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: _MyHomePage(),
    );
  }
}

class _MyHomePage extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  _MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<_MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            centerTitle: true,
            title: const Text(
              'Syncfusion charts',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  spacing(),
                  const Text("Cartesian charts"),
                  const Divider(),
                  spacing(),
                  Button(
                      text: 'Line Chart',
                      buttonAction: () => navigate(const LineChart())),
                  Button(
                      text: 'AreaChart Chart',
                      buttonAction: () => navigate(const AreaChart())),
                  Button(
                      text: 'Stacked Chart',
                      buttonAction: () =>
                          navigate(const StackedColumnCharts())),
                  Button(
                      text: 'Column Chart',
                      buttonAction: () => navigate(const ColumnChart())),
                  Button(
                      text: 'Bar Chart',
                      buttonAction: () => navigate(const BarChart())),
                  spacing(),
                  const Text("Circular charts"),
                  const Divider(),
                  spacing(),
                  Button(
                      text: 'Circular Pie Chart',
                      buttonAction: () => navigate(const CircularPieChart())),
                  Button(
                      text: 'Circle Doughnut Chart',
                      buttonAction: () =>
                          navigate(const CircleDoughnutChart())),
                  Button(
                      text: 'Circular Radial Chart',
                      buttonAction: () =>
                          navigate(const CircularRadialChart())),
                  spacing(),
                  const Text("Spark charts"),
                  const Divider(),
                  spacing(),
                  Button(
                      text: 'Spark Line Chart',
                      buttonAction: () => navigate(const SparkLineChart())),
                  Button(
                      text: 'Spark Area Chart',
                      buttonAction: () => navigate(const SparkAreaChart())),
                  Button(
                      text: 'Spark Bar Chart',
                      buttonAction: () => navigate(const SparkBarChart())),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  spacing() {
    return const SizedBox(
      height: 10,
    );
  }

  navigate(StatefulWidget page) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }
}
