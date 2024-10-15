import 'package:even_tick/config/app-color.dart';
import 'package:even_tick/config/app_assets.dart';
import 'package:even_tick/config/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NotificationPage extends StatelessWidget {
  final List<Map<String, String>> notifications = [
    {
      'subject': 'Event 01',
      'details':
          'Pay from account 251897668546 to Test Event 1 Amount 349.00 LKR is successfully completed.',
    },
    {
      'subject': 'Event 02',
      'details':
          'Pay from account 251897668547 to Test Event 2 Amount 3900.00 LKR is successfully completed.',
    },
    {
      'subject': 'Event 03',
      'details':
          'Pay from account 251897668548 to Test Event 3 Amount 500.00 LKR is successfully completed.',
    },
  ];

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
          'Notification',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 22,
            color: AppColors.headingColor,
            height: 30,
          ),
        ),
      ),
      backgroundColor: AppColors.Bacgroundcolor,
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              NotificationCard(
                subject: notifications[index]['subject']!,
                details: notifications[index]['details']!,
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                thickness: 1.5,
                color: AppColors.iconButtonBoarderColor,
              ),
            ],
          );
        },
      ),
    );
  }
}

class NotificationCard extends StatefulWidget {
  final String subject;
  final String details;

  NotificationCard({
    required this.subject,
    required this.details,
  });

  @override
  _NotificationCardState createState() => _NotificationCardState();
}

class _NotificationCardState extends State<NotificationCard> {
  bool _isRead = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListTile(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.subject,
                style: notificationsubjectTextStyle,
              ),
              SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Text(
                  widget.details,
                  style: notificationdetailsTextStyle,
                ),
              ),
            ],
          ),
          onTap: () {
            setState(() {
              _isRead = true;
            });
          },
        ),
        Positioned(
          top: 2,
          right: 20,
          child: Container(
            margin: EdgeInsets.only(right: 8),
            decoration: BoxDecoration(
              gradient: _isRead
                  ? null
                  : LinearGradient(
                      colors: [
                        AppColors.notificationcircleleftcolor,
                        AppColors.notificationcirclerightcolor
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
              color: _isRead ? Colors.white : null,
              shape: BoxShape.circle,
            ),
            width: 12,
            height: 12,
          ),
        ),
      ],
    );
  }
}
