import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:even_tick/config/app-color.dart';
import 'package:flutter/material.dart';

import '../../../config/text_styles.dart';
import '../../../widgets/festive_card_widget.dart';

class EventHomeScreen extends StatefulWidget {
  @override
  State<EventHomeScreen> createState() => _EventHomeScreenState();
}

class _EventHomeScreenState extends State<EventHomeScreen> {
  final CollectionReference eventsCollection =
      FirebaseFirestore.instance.collection('musical_events');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.AppBarColor,
        centerTitle: true,
        title: const Text(
          'Events',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 22,
            color: AppColors.headingColor,
          ),
        ),
      ),
      backgroundColor: AppColors.Bacgroundcolor,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text(
              "Musical Events",
              style: texteventTitleStyle,
            ),
            SizedBox(height: 5.0),
            Expanded(
              child: StreamBuilder(
                stream: FirebaseFirestore.instance
                    .collection('musical_events')
                    .snapshots(),
                builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  if (snapshot.hasError) {
                    return const Center(child: Text('Something went wrong!'));
                  }
                  if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                    return const Center(child: Text('No events available.'));
                  }
                  final events = snapshot.data!.docs;
                  return ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: events.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      final event = events[index];
                      return FestivalCard(
                        bannerUrl: event['bannerUrl'] ?? '',
                        title: event['title'] ?? 'No Title',
                        description: event['description'] ?? 'No Description',
                        venue: event['venue'] ?? 'No Venue',
                        price: event['price'] ?? '-/-',
                        timeStamp: (event['timeStamp'] as Timestamp).toDate(),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
