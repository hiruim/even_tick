import 'package:even_tick/config/app-color.dart';
import 'package:even_tick/ui/screens/Settings/Language.dart';
import 'package:even_tick/ui/screens/Settings/about.dart';
import 'package:even_tick/ui/screens/Settings/help.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsState();
}

class _SettingsState extends State<SettingsScreen> {
  // Placeholder variables for language and help settings
  String selectedLanguage = 'English';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.AppBarColor,
        centerTitle: true,
        title: const Text(
          'Settings',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 22,
            color: AppColors.headingColor,
            height: 30,
          ),
        ),
      ),
      backgroundColor: AppColors.Bacgroundcolor,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              title: Text('Language'),
              subtitle: Text(selectedLanguage),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Language(),
                  ),
                );
                // Open language settings or navigate to language settings page
                // You can implement your logic here
              },
            ),

            Divider(),
            // Help Button
            ListTile(
              title: Text('Help'),
              trailing: Icon(Icons.help),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HelpScreen(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('About'),
              trailing: Icon(Icons.info),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AboutScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
