import 'package:even_tick/config/app-color.dart';
import 'package:even_tick/config/app_assets.dart';
import 'package:even_tick/ui/screens/Event/event_home.dart';
import 'package:even_tick/ui/screens/Settings/about.dart';
import 'package:even_tick/ui/screens/Settings/help.dart';
import 'package:even_tick/ui/screens/home/notification.dart';
import 'package:even_tick/ui/utills/settings.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.AppBarColor,
        leading: PopupMenuButton<String>(
          icon: Icon(Icons.menu),
          onSelected: (value) {
            switch (value) {
              case 'Events':
                // Navigate to the Events page
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EventHomeScreen(),
                  ),
                );
                break;
              case 'Settings':
                // Navigate to the Settings page
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SettingsScreen(),
                  ),
                );
                break;

              case 'Help':
                // Navigate to the Help page
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HelpScreen(),
                  ),
                );
                break;
              case 'About':
                // Navigate to the About page
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AboutScreen(),
                  ),
                );
                break;
            }
          },
          itemBuilder: (BuildContext context) => [
            PopupMenuItem(
              value: 'Events',
              child: Text('Events'),
            ),
            PopupMenuItem(
              value: 'Settings',
              child: Text('Settings'),
            ),
            PopupMenuItem(
              value: 'Language',
              child: Text('Language'),
            ),
            PopupMenuItem(
              value: 'About',
              child: Text('About'),
            ),
            PopupMenuItem(
              value: 'Help',
              child: Text('Help'),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NotificationPage(),
                ),
              );
            },
          ),
        ],
        elevation: 0,
      ),
      backgroundColor: AppColors.Bacgroundcolor,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 100,
              child: Card(
                color: Colors.white,
                elevation: 3,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        child: Image.asset(
                          AppAssets.profileImg,
                          height: 120,
                        ),
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            'Hirusha Nimnada',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text('0702035711'),
                        ],
                      ),
                      Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('Points: 100'),
                          SizedBox(
                            height: 10,
                          ),
                          Text('User Type: Premium'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              width: double.infinity,
            ),
            Expanded(
              child: Center(
                child: Container(
                  width: 350,
                  height: 350,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black26),
                  ),
                  child: Center(
                    child: Image.asset(
                      AppAssets.QrImg,
                      width: 400.0,
                      height: 400.0,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
