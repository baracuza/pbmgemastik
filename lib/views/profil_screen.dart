import 'package:flutter/material.dart';
import 'package:ukm_map/views/home_screen.dart';
 // Import halaman login_screen.dart

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Nama Pengguna',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                  ],
                ),
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage(
                      'assets/images/profile.jpg'), // Ubah dengan gambar profil Anda
                ),
              ],
            ),
            Text(
              'email@example.com', // Ganti dengan alamat email Anda
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 16),
            Divider(
              color: Colors.grey.withOpacity(0.5),
            ),
            SizedBox(height: 16),
            Text(
              '+1234567890', // Ganti dengan nomor telepon Anda
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 16),
            Divider(
              color: Colors.grey.withOpacity(0.5),
            ),
            SizedBox(height: 16),
            Text(
              'Jenis Kelamin', // Ganti dengan jenis kelamin Anda
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 16),
            Divider(
              color: Colors.grey.withOpacity(0.5),
            ),
            SizedBox(height: 16),
            Text(
              'Tanggal Lahir', // Ganti dengan tanggal lahir Anda
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Tambahkan logika untuk mengedit profil
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize:
                        Size(200, 50), // Lebarnya bisa disesuaikan di sini
                  ),
                  child: Text('Edit Profil'),
                ),
              ],
            ),
            SizedBox(height: 8),
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    OutlinedButton(
      onPressed: () {
        // Tambahkan logika untuk kembali ke halaman login
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
      },
      style: OutlinedButton.styleFrom(
        minimumSize:
            Size(200, 50), // Lebarnya bisa disesuaikan di sini
      ),
      child: Text('Keluar'),
    ),
  ],
),

          ],
        ),
      ),
    );
  }
}
