import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:even_tick/ui/screens/Event/event_home.dart';
import 'package:even_tick/ui/screens/home/home.dart';
import 'package:even_tick/ui/utills/settings.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _BottomNavState();
}

class _BottomNavState extends State<MainScreen> {
  int currentTabIndex = 0;

  late List<Widget> pages;
  late Widget currentPage;
  late HomeScreen homepage;
  late EventHomeScreen event;
  late SettingsScreen Settings;

  @override
  void initState() {
    homepage = HomeScreen();
    event = EventHomeScreen();
    Settings = SettingsScreen();
    pages = [
      homepage,
      event,
      Settings,
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
          height: 65,
          backgroundColor: Colors.white,
          color: Color.fromARGB(255, 3, 28, 77),
          animationDuration: Duration(milliseconds: 500),
          onTap: (int index) {
            setState(() {
              currentTabIndex = index;
            });
          },
          items: [
            Icon(
              Icons.home_outlined,
              color: Colors.white,
            ),
            Icon(
              Icons.event,
              color: Colors.white,
            ),
            Icon(
              Icons.settings,
              color: Colors.white,
            ),
          ]),
      body: pages[currentTabIndex],
    );
  }
}
