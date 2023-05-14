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
        backgroundColor: Theme.of(context).colorScheme.primary.withOpacity(0.2),
        leading: IconButton(icon: SvgPicture.asset('assets/icons/menu.svg', color: Colors.black),onPressed: (){},),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            height: 240,
            width: double.maxFinite,
            decoration: BoxDecoration(color: Theme.of(context).colorScheme.primary.withOpacity(0.2), borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text('Hello, John', style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.black, fontWeight: FontWeight.bold)),
              const Text('Prevent cholera while you travel'),
              const SizedBox(height: 10),
              const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                Expanded(child: AidCard(title: 'Symptoms',subtitle: 'Check signs & symptoms',)),
                Expanded(child: AidCard(title: 'Prevention',subtitle: 'Help you avoid risk of infection',)),
              ],)
            ]),
    ),
    Container(
      padding: const EdgeInsets.all(16),
      height: MediaQuery.of(context).size.height -360,
      width: double.infinity,
      child: Center(child: SfMaps(layers: [MapShapeLayer(source: _dataSource)],)),
    )
        ],
      ));
  }
}

