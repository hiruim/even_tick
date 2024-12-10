import 'package:even_tick/ui/screens/payment/card_details.dart';
import 'package:flutter/material.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(
            255, 32, 84, 164), // Set the app bar color to blue
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text('Payment Method'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Added padding for better layout
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'SELECT YOUR', // First line of text
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold), // Custom font size
                ),
                Text(
                  'PAYMENT METHOD', // Second line of text
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold), // Custom font size
                ),
              ],
            ),
            const SizedBox(height: 30),
            PaymentMethodButton(
              label: 'Credit / Debit card',
              //imageAsset: 'assets/images/card.jpeg', // Corrected image path
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CardDetailsScreen(),
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            PaymentMethodButton(
              label: 'Check in on day',
              onPressed: () {
                // Handle Check in on day selection
              },
            ),
          ],
        ),
      ),
    );
  }
}

class PaymentMethodButton extends StatelessWidget {
  final String label;
  final String? imageAsset; // Optional image asset for the button
  final VoidCallback onPressed;

  const PaymentMethodButton(
      {Key? key, required this.label, this.imageAsset, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity, // Button takes full width
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (imageAsset != null) ...[
              Image.asset(
                imageAsset!,
                height: 24, // Height of the image
                width: 24, // Width of the image
              ),
              const SizedBox(width: 10), // Spacing between image and text
            ],
            Text(
              label,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
