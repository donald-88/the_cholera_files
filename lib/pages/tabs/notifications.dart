import 'package:flutter/material.dart';

import '../../widgets/notificationsCard.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [NotificationsCard()],
      ),
    );
  }
}
