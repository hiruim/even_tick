import 'package:even_tick/config/app-color.dart';
import 'package:even_tick/config/app_assets.dart';
import 'package:even_tick/ui/screens/payment/paymant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EventScreen extends StatelessWidget {
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
          'Event',
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
          children: <Widget>[
            // Event image
            Container(
              width: double.infinity,
              height: 200,
              child: Image.asset(
                AppAssets.PartyImg,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 20),

            // Event description
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title row
                    Text(
                      'Summer Beach Party',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(height: 2), // Space between title and date
                    // Date and time row
                    Text(
                      '12:00 pm, 29 July 2024',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color:
                            Colors.grey[600], // Optional: color for subtle look
                      ),
                    ),
                    SizedBox(
                        height: 15), // Added space between date and description
                    Text(
                      '🌊 Summer Beach Party at Galkissa Beach! ',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 15),
                    Text(
                        'Join us for an unforgettable day of sun, sand, and sensational music at the Summer Beach Party! Experience the vibrant atmosphere as we celebrate summer with an incredible lineup of live performances. '),
                    SizedBox(height: 15),
                    Text(
                      '📍 Location: mount lavinia Beach',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      '🎤 Featured Band: NEWS ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      '✨ Special Guest Performers:Bns,wasthi,gayan perera,',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      '🎟 Ticket Prices:\n'
                      '• Normal Ticket: LKR 1,000\n'
                      '• VIP Ticket: LKR 2,500 (Includes exclusive access to the VIP area with premium views)\n'
                      '• VVIP Ticket: LKR 8,000 (Enjoy all VIP benefits plus complimentary drinks and meet & greet with the artists!)',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Don’t miss out on the summer's biggest beach bash! Grab your tickets now and be part of this amazing celebration!",
                      style: TextStyle(),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),

            // Checkout button
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PaymentScreen(),
                  ),
                );
              },
              child: Text(
                'Check Out',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF2052A4),
                minimumSize: Size(double.infinity, 50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
