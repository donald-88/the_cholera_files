import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class DemographicPieChart extends StatelessWidget {
  const DemographicPieChart({super.key, required this.data});

  final List<CholeraData> data;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SfCircularChart(
        legend: Legend(isVisible: true),
        series: <CircularSeries>[
          PieSeries<CholeraData, String>(
            dataSource: data,
            xValueMapper: (CholeraData data, _) => data.gender,
            yValueMapper: (CholeraData data, _) => data.count,
            dataLabelSettings: const DataLabelSettings(isVisible: true),
          )
        ],
      ),
    );
  }
}

class CholeraData {
  final String gender;
  final int count;

  CholeraData(this.gender, this.count);
}
