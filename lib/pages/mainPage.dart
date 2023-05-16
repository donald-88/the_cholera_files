import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:the_cholera_files/pages/tabs/home.dart';
import 'package:the_cholera_files/pages/tabs/notifications.dart';
import 'package:the_cholera_files/pages/tabs/profile.dart';

import 'tabs/statistics.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  final List _screens = [
    const Home(),
    const Notifications(),
    const Statistics(),
    const Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          onTap: onTap,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/home.svg',
                  color: Colors.grey,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/icons/notifications.svg',
                    color: Colors.grey),
                label: 'Notifications'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/icons/calendar.svg',
                    color: Colors.grey),
                label: 'Notifications'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/icons/user.svg',
                  color: Colors.grey,
                ),
                label: 'Profile')
          ]),
      body: _screens[currentIndex],
    );
  }
}
