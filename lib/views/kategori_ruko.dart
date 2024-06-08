import 'package:flutter/material.dart';
import 'favorit_screen.dart';
import 'profil_screen.dart';
import 'bantuan_screen.dart';
import 'package:ukm_map/views/description_screen.dart';
import 'postingan_saya_screen.dart';
import 'home_screen.dart';  // Pastikan Anda mengimpor HomeScreen

class ShopHouseCategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),  // Buat title kosong untuk keseragaman
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
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Temukan Ruko',
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(width: 8),
                ElevatedButton.icon(
                  onPressed: () {
                    // Aksi ketika tombol filter ditekan
                  },
                  icon: Icon(Icons.filter_list),
                  label: Text('Filter'),
                ),
              ],
            ),
            SizedBox(height: 32),
            Text(
              'Rekomendasi Ruko',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Card(
                    margin: EdgeInsets.only(bottom: 16),
                    child: ListTile(
                      leading: Icon(Icons.business, size: 40),
                      title: Text('Nama Ruko $index'),
                      subtitle: Text('Alamat Ruko $index'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LocationDescriptionScreen(
                              locationName: 'Nama Ruko $index',
                              locationAddress: 'Alamat Ruko $index',
                              imageUrl: 'assets/images/ruko.jpg',
                            ),
                          ),
                        );
                      },
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
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help),
            label: 'Bantuan',
          ),
        ],
        selectedItemColor: Colors.grey,
        unselectedItemColor: Colors.grey, // Mengubah warna ikon tidak dipilih menjadi abu-abu
        showUnselectedLabels: true,
        onTap: (int index) {
          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomeScreen(), // Arahkan ke HomeScreen
              ),
            );
          } else if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FavoriteScreen(), // Arahkan ke FavoriteScreen
              ),
            );
          } else if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PostinganSayaScreen(), // Arahkan ke PostinganSayaScreen
              ),
            );
          } else if (index == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProfileScreen(), // Arahkan ke ProfileScreen
              ),
            );
          } else if (index == 4) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HelpScreen(), // Arahkan ke HelpScreen
              ),
            );
          }
        },
      ),
    );
  }
}
