import 'package:eriell_test_case/features/main/presentation/mixin/mixin.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class PieChartWidget extends StatefulWidget {
  const PieChartWidget({Key? key}) : super(key: key);

  @override
  State<PieChartWidget> createState() => _PieChartWidgetState();
}

class _PieChartWidgetState extends State<PieChartWidget> with MainMixin{
  @override
  Widget build(BuildContext context) {
    return  SfCircularChart(
        series: <CircularSeries>[
          // Render pie chart
          PieSeries<ChartData, String>(
              dataSource: chartData,
              pointColorMapper:(ChartData data,  _) => data.color,
              xValueMapper: (ChartData data, _) => data.x,
              yValueMapper: (ChartData data, _) => data.y
          )
        ]
    );
  }
}
