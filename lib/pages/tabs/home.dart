import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:syncfusion_flutter_maps/maps.dart';

import '../../widgets/aidCard.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late MapShapeSource _dataSource;

  @override
  void initState() {
    _dataSource = const MapShapeSource.asset(
      'assets/maps/australia.json',
      shapeDataField: 'STATE_NAME',
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon:
                SvgPicture.asset('assets/icons/menu.svg', color: Colors.black),
            onPressed: () {},
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hello, John',
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      color: Colors.black, fontWeight: FontWeight.bold)),
              const Text('Prevent cholera while you travel'),
              const SizedBox(height: 20),
              GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                shrinkWrap: true,
                children: const [
                  AidCard(
                    title: 'Symptoms',
                    subtitle: 'Signs identify infection risk',
                    icon: 'signs_symptoms',
                  ),
                  AidCard(
                    title: 'Prevention',
                    subtitle: 'Help you avoid risk of infection',
                    icon: 'prevention',
                  ),
                  AidCard(
                    title: 'Find a doctor',
                    subtitle: 'Check signs & symptoms',
                    icon: 'call',
                  ),
                  AidCard(
                    title: 'Reports',
                    subtitle: 'Check signs & symptoms',
                    icon: 'reports',
                  ),
                  AidCard(
                    title: 'Risk zones',
                    subtitle: 'Check signs & symptoms',
                    icon: 'risk_zones',
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
