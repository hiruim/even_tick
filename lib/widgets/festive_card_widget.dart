import 'package:flutter/material.dart';

import '../config/text_styles.dart';

class FestivalCard extends StatelessWidget {
  final String bannerUrl;
  final String title;
  final String description;
  final String venue;
  final int price;
  final DateTime timeStamp;

  const FestivalCard({
    Key? key,
    required this.bannerUrl,
    required this.title,
    required this.description,
    required this.venue,
    required this.timeStamp, required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Material(
          elevation: 5.0,
          borderRadius: BorderRadius.circular(10),
          child: Container(
            width: 180,
            padding: const EdgeInsets.all(9),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  bannerUrl,
                  height: 100,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Text(
                  title,
                  style: eventnameTextStyle,
                ),
                const SizedBox(height: 5.0),
                Text(
                  description,
                  maxLines: 2,
                  style: eventcardTextStyle,
                ),
                const SizedBox(height: 5.0),
                Text("\$$price", style: eventcardTextStyle),
              ],
            ),
          ),
        ),
        const SizedBox(width: 10,)
      ],
    );
  }

  String formatDate(DateTime date) {
    return "${date.day}/${date.month}/${date.year}";
  }
}