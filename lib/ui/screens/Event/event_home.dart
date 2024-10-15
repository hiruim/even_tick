import 'package:even_tick/config/app-color.dart'; // Replace with your own import for app colors
import 'package:even_tick/config/app_assets.dart';
import 'package:even_tick/config/text_styles.dart';
import 'package:even_tick/ui/screens/Event/event.dart';
import 'package:flutter/material.dart';

class EventHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.AppBarColor, // Replace with your color
        centerTitle: true,
        title: const Text(
          'Events',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 22,
            color: AppColors.headingColor, // Replace with your color
          ),
        ),
      ),
      backgroundColor: AppColors.Bacgroundcolor, // Replace with your color
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: 'Search',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              // Musical
              SizedBox(height: 20),
              Text(
                "Musical Events",
                style: texteventTitleStyle,
              ),
              SizedBox(height: 5.0),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EventScreen()));
                      },
                      child: Container(
                        margin: EdgeInsets.all(5.0),
                        child: Material(
                          elevation: 5.0,
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            width: 180,
                            padding: EdgeInsets.all(9),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  AppAssets.PartyImg,
                                  height: 50,
                                  width: 180,
                                  fit: BoxFit.cover,
                                ),
                                Text(
                                  "Veggie Taco Hash",
                                  style: eventnameTextStyle,
                                ),
                                SizedBox(height: 5.0),
                                Text(
                                  "Fresh and Healthy",
                                  style: eventcardTextStyle,
                                ),
                                SizedBox(height: 5.0),
                                Text("\$25", style: eventcardTextStyle),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        padding: EdgeInsets.all(9),
                        width: 180,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              AppAssets.PartyImg,
                              height: 50,
                              width: 180,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              "Veggie Taco Hash",
                              style: eventnameTextStyle,
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              "Fresh and Healthy",
                              style: eventcardTextStyle,
                            ),
                            SizedBox(height: 5.0),
                            Text("\$25", style: eventcardTextStyle),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        padding: EdgeInsets.all(9),
                        width: 180,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              AppAssets.PartyImg,
                              height: 50,
                              width: 180,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              "Veggie Taco Hash",
                              style: eventnameTextStyle,
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              "Fresh and Healthy",
                              style: eventcardTextStyle,
                            ),
                            SizedBox(height: 5.0),
                            Text("\$25", style: eventcardTextStyle),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        padding: EdgeInsets.all(9),
                        width: 180,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              AppAssets.PartyImg,
                              height: 50,
                              width: 180,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              "Veggie Taco Hash",
                              style: eventnameTextStyle,
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              "Fresh and Healthy",
                              style: eventcardTextStyle,
                            ),
                            SizedBox(height: 5.0),
                            Text("\$25", style: eventcardTextStyle),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Festival
              SizedBox(height: 7.0),
              Text(
                "Festival Events",
                style: texteventTitleStyle,
              ),
              SizedBox(height: 5.0),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EventScreen()));
                      },
                      child: Container(
                        margin: EdgeInsets.all(5.0),
                        child: Material(
                          elevation: 5.0,
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            width: 180,
                            padding: EdgeInsets.all(9),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  AppAssets.PartyImg,
                                  height: 50,
                                  width: 180,
                                  fit: BoxFit.cover,
                                ),
                                Text(
                                  "Veggie Taco Hash",
                                  style: eventnameTextStyle,
                                ),
                                SizedBox(height: 5.0),
                                Text(
                                  "Fresh and Healthy",
                                  style: eventcardTextStyle,
                                ),
                                SizedBox(height: 5.0),
                                Text("\$25", style: eventcardTextStyle),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        padding: EdgeInsets.all(9),
                        width: 180,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              AppAssets.PartyImg,
                              height: 50,
                              width: 180,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              "Veggie Taco Hash",
                              style: eventnameTextStyle,
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              "Fresh and Healthy",
                              style: eventcardTextStyle,
                            ),
                            SizedBox(height: 5.0),
                            Text("\$25", style: eventcardTextStyle),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        padding: EdgeInsets.all(9),
                        width: 180,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              AppAssets.PartyImg,
                              height: 50,
                              width: 180,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              "Veggie Taco Hash",
                              style: eventnameTextStyle,
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              "Fresh and Healthy",
                              style: eventcardTextStyle,
                            ),
                            SizedBox(height: 5.0),
                            Text("\$25", style: eventcardTextStyle),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        padding: EdgeInsets.all(9),
                        width: 180,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              AppAssets.PartyImg,
                              height: 50,
                              width: 180,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              "Veggie Taco Hash",
                              style: eventnameTextStyle,
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              "Fresh and Healthy",
                              style: eventcardTextStyle,
                            ),
                            SizedBox(height: 5.0),
                            Text("\$25", style: eventcardTextStyle),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Drama
              SizedBox(height: 7.0),
              Text(
                "Drama Show",
                style: texteventTitleStyle,
              ),
              SizedBox(height: 5.0),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EventScreen()));
                      },
                      child: Container(
                        margin: EdgeInsets.all(5.0),
                        child: Material(
                          elevation: 5.0,
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            width: 180,
                            padding: EdgeInsets.all(9),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  AppAssets.PartyImg,
                                  height: 50,
                                  width: 180,
                                  fit: BoxFit.cover,
                                ),
                                Text(
                                  "Veggie Taco Hash",
                                  style: eventnameTextStyle,
                                ),
                                SizedBox(height: 5.0),
                                Text(
                                  "Fresh and Healthy",
                                  style: eventcardTextStyle,
                                ),
                                SizedBox(height: 5.0),
                                Text("\$25", style: eventcardTextStyle),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        padding: EdgeInsets.all(9),
                        width: 180,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              AppAssets.PartyImg,
                              height: 50,
                              width: 180,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              "Veggie Taco Hash",
                              style: eventnameTextStyle,
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              "Fresh and Healthy",
                              style: eventcardTextStyle,
                            ),
                            SizedBox(height: 5.0),
                            Text("\$25", style: eventcardTextStyle),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        padding: EdgeInsets.all(9),
                        width: 180,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              AppAssets.PartyImg,
                              height: 50,
                              width: 180,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              "Veggie Taco Hash",
                              style: eventnameTextStyle,
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              "Fresh and Healthy",
                              style: eventcardTextStyle,
                            ),
                            SizedBox(height: 5.0),
                            Text("\$25", style: eventcardTextStyle),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        padding: EdgeInsets.all(9),
                        width: 180,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              AppAssets.PartyImg,
                              height: 50,
                              width: 180,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              "Veggie Taco Hash",
                              style: eventnameTextStyle,
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              "Fresh and Healthy",
                              style: eventcardTextStyle,
                            ),
                            SizedBox(height: 5.0),
                            Text("\$25", style: eventcardTextStyle),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //Exhibitions
              SizedBox(height: 7.0),
              Text(
                "Exhibitions",
                style: texteventTitleStyle,
              ),
              SizedBox(height: 5.0),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EventScreen()));
                      },
                      child: Container(
                        margin: EdgeInsets.all(5.0),
                        child: Material(
                          elevation: 5.0,
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            width: 180,
                            padding: EdgeInsets.all(9),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  AppAssets.PartyImg,
                                  height: 50,
                                  width: 180,
                                  fit: BoxFit.cover,
                                ),
                                Text(
                                  "Veggie Taco Hash",
                                  style: eventnameTextStyle,
                                ),
                                SizedBox(height: 5.0),
                                Text(
                                  "Fresh and Healthy",
                                  style: eventcardTextStyle,
                                ),
                                SizedBox(height: 5.0),
                                Text("\$25", style: eventcardTextStyle),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        padding: EdgeInsets.all(9),
                        width: 180,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              AppAssets.PartyImg,
                              height: 50,
                              width: 180,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              "Veggie Taco Hash",
                              style: eventnameTextStyle,
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              "Fresh and Healthy",
                              style: eventcardTextStyle,
                            ),
                            SizedBox(height: 5.0),
                            Text("\$25", style: eventcardTextStyle),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        padding: EdgeInsets.all(9),
                        width: 180,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              AppAssets.PartyImg,
                              height: 50,
                              width: 180,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              "Veggie Taco Hash",
                              style: eventnameTextStyle,
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              "Fresh and Healthy",
                              style: eventcardTextStyle,
                            ),
                            SizedBox(height: 5.0),
                            Text("\$25", style: eventcardTextStyle),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        padding: EdgeInsets.all(9),
                        width: 180,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              AppAssets.PartyImg,
                              height: 50,
                              width: 180,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              "Veggie Taco Hash",
                              style: eventnameTextStyle,
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              "Fresh and Healthy",
                              style: eventcardTextStyle,
                            ),
                            SizedBox(height: 5.0),
                            Text("\$25", style: eventcardTextStyle),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
