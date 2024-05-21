import 'package:flutter/material.dart';

class LandCategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kategori Tanah'),
        actions: [
          IconButton(
            icon: Icon(Icons.filter_list),
            onPressed: () {
              // Tambahkan fungsi untuk menampilkan filter
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Jenis-jenis Tanah',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView(
                children: [
                  LandTypeCard(
                    type: 'Tanah Pribadi',
                    icon: Icons.layers,
                  ),
                  LandTypeCard(
                    type: 'SHGB',
                    icon: Icons.house,
                  ),
                  LandTypeCard(
                    type: 'Tanah HGU',
                    icon: Icons.layers_outlined,
                  ),
                  // Tambahkan card jenis-jenis tanah lainnya di sini
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LandTypeCard extends StatelessWidget {
  final String type;
  final IconData icon;

  const LandTypeCard({
    required this.type,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Tambahkan fungsi untuk menavigasi ke halaman detail jenis tanah
      },
      child: Card(
        elevation: 4,
        margin: EdgeInsets.symmetric(vertical: 8),
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Row(
            children: [
              Icon(
                icon,
                size: 40,
                color: Colors.blue,
              ),
              SizedBox(width: 16),
              Text(
                type,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
