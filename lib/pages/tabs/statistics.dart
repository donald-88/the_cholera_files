import 'package:flutter/material.dart';
import 'package:the_cholera_files/widgets/casesChart.dart';
import 'package:the_cholera_files/widgets/demographicPieChart.dart';

class Statistics extends StatelessWidget {
  Statistics({super.key});

  final List<String> cities = [
    'Blantyre',
    'Lilongwe',
    'Zomba',
    'Mzuzu'
  ]; // Replace with your city names
  final List<int> recoveredCases = [
    100,
    80,
    120,
    70
  ]; // Replace with your actual recovered cases data
  final List<int> deathCases = [
    10,
    8,
    12,
    7
  ]; // Replace with your actual death cases data
  final List<int> infectedCases = [200, 150, 180, 90];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text('Regional Statistics',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(fontWeight: FontWeight.w600)),
          const SizedBox(height: 10),
          CholeraChart(
            cities: cities,
            recovered: recoveredCases,
            deaths: deathCases,
            infected: infectedCases,
          ),
          const SizedBox(height: 20),
          Text('Demographic Data',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(fontWeight: FontWeight.w600)),
          DemographicPieChart(
              data: [CholeraData('Male', 100), CholeraData('Female', 150)])
        ],
      ),
    );
  }
}
