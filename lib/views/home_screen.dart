import 'package:flutter/material.dart';
import 'package:ukm_map/views/bantuan_screen.dart';
import 'description_screen.dart';
import 'profil_screen.dart';
import 'favorit_screen.dart'; // Import halaman favorit_screen.dart

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0, right: 16.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/profile.jpg'), // Pastikan gambar ada di path ini
              radius: 20,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Kemana Anda Ingin Membuka Usaha Anda',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Cari tempat...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 32),
            Text(
              'Kategori',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CategoryBox(icon: Icons.layers, label: 'Tanah'),
                CategoryBox(icon: Icons.house, label: 'Toko'),
                CategoryBox(icon: Icons.layers_outlined, label: 'Ruko'),
              ],
            ),
            SizedBox(height: 32),
            Text(
              'Rekomendasi Lokasi',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 6, // Jumlah rekomendasi lokasi
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LocationDescriptionScreen(
                            locationName: 'Nama Lokasi $index',
                            locationAddress: 'Alamat Lokasi $index',
                            imageUrl: 'https://via.placeholder.com/200', // Placeholder image URL
                          ),
                        ),
                      );
                    },
                    child: Container(
                      width: 200,
                      margin: EdgeInsets.only(right: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.grey[200],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.location_on, size: 64),
                          SizedBox(height: 8),
                          Text('Nama Lokasi $index'),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite), // Ganti icon favorit
            label: 'Favorit',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person), // Ganti icon profil
            label: 'Profil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help),
            label: 'Bantuan',
          ),
        ],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: (int index) {
          if (index == 2) { // Jika tombol profil ditekan
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfileScreen()), // Arahkan ke ProfilScreen
            );
          } else if (index == 1) { // Jika tombol favorit ditekan
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FavoriteScreen()), // Arahkan ke FavoriteScreen
            );
          }
          else if (index == 3) { // Jika tombol favorit ditekan
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HelpScreen()), // Arahkan ke FavoriteScreen
            );
          }
        },
      ),
    );
  }
}

class CategoryBox extends StatelessWidget {
  final IconData icon;
  final String label;

  const CategoryBox({
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(
            icon,
            size: 40,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
