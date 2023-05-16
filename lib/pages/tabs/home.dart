import 'package:flutter/material.dart';

import '../../widgets/aidCard.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hello, John',
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    color: Colors.black, fontWeight: FontWeight.w900)),
            const Text('Prevent cholera while you travel'),
            const SizedBox(height: 32),
            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'notification');
                },
                child: Container(
                  height: width - 80,
                  width: width - 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(width)),
                      border:
                          Border.all(width: 2, color: Colors.green.shade300)),
                  child: Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      Text(
                        '11.2%',
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 36,
                            color: Colors.green),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "You have a 11.2% chance of getting infected.",
              textAlign: TextAlign.center,
            ),
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
      ),
    ));
  }
}
