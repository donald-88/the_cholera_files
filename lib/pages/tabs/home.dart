import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../widgets/aidCard.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary.withOpacity(0.2),
        leading: IconButton(icon: SvgPicture.asset('assets/icons/menu.svg', color: Colors.black),onPressed: (){},),
      ),
      body: Container(
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
          GridView.count(crossAxisCount: 2,childAspectRatio: 1.3, mainAxisSpacing: 16,crossAxisSpacing: 16, shrinkWrap: true, children: const [
            AidCard(title: 'Symptoms',subtitle: 'Check signs & symptoms',),
            AidCard(title: 'Prevention',subtitle: 'Help you avoid risk of infection',),
          ])
        ]),
    ));
  }
}

