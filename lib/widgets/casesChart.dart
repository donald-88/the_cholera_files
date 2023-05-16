import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CholeraChart extends StatelessWidget {
  final List<String> cities;
  final List<int> recovered;
  final List<int> deaths;
  final List<int> infected;

  const CholeraChart({
    super.key,
    required this.cities,
    required this.recovered,
    required this.deaths,
    required this.infected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      height: 300,
      child: SfCartesianChart(
        primaryXAxis: CategoryAxis(
            labelStyle: Theme.of(context).textTheme.bodySmall,
            majorGridLines: const MajorGridLines(width: 0),
            minorGridLines: const MinorGridLines(width: 0)),
        legend: Legend(
            isVisible: true,
            isResponsive: true,
            position: LegendPosition.bottom,
            textStyle: Theme.of(context).textTheme.bodySmall),
        series: <ScatterSeries<_ChartData, String>>[
          ScatterSeries<_ChartData, String>(
            name: 'Recovered',
            dataSource: _getData(recovered),
            xValueMapper: (_ChartData data, _) => data.city,
            yValueMapper: (_ChartData data, _) => data.value,
            markerSettings: const MarkerSettings(isVisible: true),
            dataLabelSettings: const DataLabelSettings(isVisible: false),
          ),
          ScatterSeries<_ChartData, String>(
            name: 'Deaths',
            dataSource: _getData(deaths),
            color: Colors.red,
            xValueMapper: (_ChartData data, _) => data.city,
            yValueMapper: (_ChartData data, _) => data.value,
            markerSettings: const MarkerSettings(isVisible: true),
            dataLabelSettings: const DataLabelSettings(isVisible: false),
          ),
          ScatterSeries<_ChartData, String>(
            name: 'Infected',
            dataSource: _getData(infected),
            color: Colors.orange,
            xValueMapper: (_ChartData data, _) => data.city,
            yValueMapper: (_ChartData data, _) => data.value,
            markerSettings: const MarkerSettings(isVisible: true),
            dataLabelSettings: const DataLabelSettings(isVisible: false),
          ),
        ],
      ),
    );
  }

  List<_ChartData> _getData(List<int> cases) {
    List<_ChartData> data = [];

    for (int i = 0; i < cities.length; i++) {
      data.add(_ChartData(cities[i], cases[i]));
    }

    return data;
  }
}

class _ChartData {
  final String city;
  final int value;

  _ChartData(this.city, this.value);
}
