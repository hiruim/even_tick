import 'package:even_tick/config/app-color.dart';
import 'package:even_tick/config/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HelpScreen extends StatefulWidget {
  @override
  _HelpState createState() => _HelpState();
}

class _HelpState extends State<HelpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.AppBarColor,
        leading: IconButton(
          icon: SvgPicture.asset(AppAssets.arrowBackWithCircularBoarderIcon),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: const Text(
          'Help',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 22,
            color: AppColors.headingColor,
            height: 30,
          ),
        ),
      ),
      backgroundColor: AppColors.Bacgroundcolor,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.0),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 20),
              _buildSectionWithTitleAndBorder('1. Route Information'),
              _buildTextWithBorder(
                "Users can inquire about specific bus routes, stops, and schedules. "
                "Real-time tracking may be available to provide the current location of the school buses.",
              ),
              SizedBox(height: 20),
              _buildSectionWithTitleAndBorder('2. Emergency Support'),
              _buildTextWithBorder(
                "Immediate access to emergency contacts and protocols in case of incidents during bus transit. "
                "Quick assistance in situations such as breakdowns, accidents, or delays.",
              ),
              SizedBox(height: 20),
              _buildSectionWithTitleAndBorder('3. Safety Guidelines'),
              _buildTextWithBorder(
                "Offers information on safety protocols, rules, and regulations for students using the school bus. "
                "Tips for parents on ensuring their child's safety during transit.",
              ),
              SizedBox(height: 20),
              _buildSectionWithTitleAndBorder('4. User-Friendly Interface'),
              _buildTextWithBorder(
                "Simple and intuitive interface for easy navigation, making it accessible to users of all technical levels.",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSectionWithTitleAndBorder(String title) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(5.0), // Adds rounded corners
      ),
      padding: EdgeInsets.all(8.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 9, 62, 116),
        ),
      ),
    );
  }

  Widget _buildTextWithBorder(String text) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(5.0), // Adds rounded corners
      ),
      padding: EdgeInsets.all(8.0),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 16,
        ),
      ),
    );
  }
}
