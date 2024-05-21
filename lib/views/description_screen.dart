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
                    child: Image.network(imageUrl, fit: BoxFit.cover),
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
                    color: Colors.grey[300], // Placeholder for map
                    child: Center(
                      child: Text('Map Placeholder'),
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
                    child: Text('Unduh Formulir'),
                  ),
                  SizedBox(height: 8),
                  ElevatedButton(
                    onPressed: () {
                      // Implement upload form functionality here
                    },
                    child: Text('Unggah Formulir'),
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
