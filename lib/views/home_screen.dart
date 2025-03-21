import 'package:flutter/material.dart';
import 'description_screen.dart';
import 'profil_screen.dart';
import 'favorit_screen.dart';
import 'bantuan_screen.dart';
import 'postingan_saya_screen.dart';
import 'package:ukm_map/views/kategori_tanah.dart';
import 'package:ukm_map/views/kategori_ruko.dart';
import 'package:ukm_map/views/kategori_toko.dart';
import 'package:ukm_map/views/upload_product_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Dimana Anda Ingin Membuka Usaha Anda',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Pencarian tempat...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
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
                CategoryBox(
                  icon: Icons.layers,
                  label: 'Tanah',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LandCategoryScreen(),
                      ),
                    );
                  },
                ),
                CategoryBox(
                  icon: Icons.store,
                  label: 'Toko',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => StoreCategoryScreen(),
                      ),
                    );
                  },
                ),
                CategoryBox(
                  icon: Icons.apartment,
                  label: 'Ruko',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ShopHouseCategoryScreen(),
                      ),
                    );
                  },
                ),
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
        type: BottomNavigationBarType.fixed, // Tambahkan ini untuk memastikan jarak yang sama
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorit',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera), // Ganti icon favorit
            label: 'Postingan',
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
          if (index == 2) {
            // Jika tombol postingan ditekan
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PostinganSayaScreen(), // Arahkan ke PostinganSayaScreen
              ),
            );
          } else if (index == 1) {
            // Jika tombol favorit ditekan
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FavoriteScreen(), // Arahkan ke FavoriteScreen
              ),
            );
          } else if (index == 3) {
            // Jika tombol profil ditekan
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProfileScreen(), // Arahkan ke ProfileScreen
              ),
            );
          } else if (index == 4) {
            // Jika tombol bantuan ditekan
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HelpScreen(), // Arahkan ke HelpScreen
              ),
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => UploadProductScreen(),
            ),
          );
        },
        backgroundColor: Color(0xFF3FAFFF), // Warna tombol
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat, // Posisi di kanan bawah
    );
  }
}

class CategoryBox extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const CategoryBox({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
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
      ),
    );
  }
}
