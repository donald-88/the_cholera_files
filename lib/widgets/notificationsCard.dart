import 'package:flutter/material.dart';

class NotificationsCard extends StatelessWidget {
  const NotificationsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Warning!',
              style: Theme.of(context).textTheme.titleSmall!.copyWith(),
            ),
            const SizedBox(height: 4),
            Text(
                'You have a entered cholera hot zone. Take care and be sure to practice sanitary measures.',
                style: Theme.of(context).textTheme.bodySmall!.copyWith()),
          ],
        ),
      ),
    );
  }
}
