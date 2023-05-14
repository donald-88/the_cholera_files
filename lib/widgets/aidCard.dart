import 'package:flutter/material.dart';

class AidCard extends StatelessWidget {
  const AidCard({
    super.key,
    required this.title,
    required this.subtitle,
  });

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 20,
              width: 20,
              color: Colors.black,
            ),
            const SizedBox(height: 10),
            Text(title, style: Theme.of(context).textTheme.titleSmall!.copyWith(fontWeight: FontWeight.bold),),
            const SizedBox(height: 2),
            Text(subtitle,style: Theme.of(context).textTheme.bodySmall!.copyWith(fontWeight: FontWeight.bold, fontSize: 10)),
          ],
        ),
      ),
    );
  }
}