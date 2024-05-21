import 'package:flutter/material.dart';

class LocationDescriptionScreen extends StatelessWidget {
  final String locationName;
  final String locationAddress;
  final String imageUrl;

  LocationDescriptionScreen({
    required this.locationName,
    required this.locationAddress,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Deskripsi Lokasi'),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity, // Make image full width
                    child: Image.asset(imageUrl, fit: BoxFit.cover),
                  ),
                  SizedBox(height: 16),
                  Text(
                    locationName,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    locationAddress,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[600],
                    ),
                  ),
                  SizedBox(height: 16),
                  Container(
                    height: 200,
                    child: Image.asset(
                      'assets/images/map_placeholder.jpg', // Ganti dengan path gambar map dari assets
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 16),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Implement download form functionality here
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white, // Background color of the button
                    ),
                    child: Text(
                      'Hubungi Pihak Terkait',
                      style: TextStyle(
                        color: Colors.blue, // Text color
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
