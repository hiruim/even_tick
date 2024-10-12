import 'package:even_tick/config/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  _launchEmail() async {
    final Uri _emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'safegobus@gmail.com',
    );

    try {
      if (await canLaunch(_emailLaunchUri.toString())) {
        await launch(_emailLaunchUri.toString());
      } else {
        throw 'Could not launch $_emailLaunchUri';
      }
    } catch (e) {
      print('Error launching email: $e');
      // Provide a fallback option here, such as showing an error message.
    }
  }

  _launchPhone() async {
    const phone = 'tel:+94702035711';
    if (await canLaunch(phone)) {
      await launch(phone);
    } else {
      throw 'Could not launch $phone';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage:
                    AssetImage(AppAssets.logo), // Add your logo image
              ),
              SizedBox(height: 20),
              Text(
                'Even tick',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Version 1.0.0',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'We introduce event management app named as Event Tikcs.. We develop it as whole customers to do their work essay. We introduce the card called premium card. The customer who used our app , they will added some points.. And also we give some benifits for the premium card holders',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 20),
              Text(
                'Support',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Contact Us',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  _launchEmail();
                },
                child: Text(
                  'hirushahewagama02@gmail.com',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  _launchPhone();
                },
                child: Text(
                  'Hirusha :- +94 702035711',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Your feedback is important to us in order to make SafeGo better for you. Report any bugs, improvements and your suggestions regarding SafeGo so we can serve you even better.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
