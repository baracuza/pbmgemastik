import 'package:flutter/material.dart';
import 'edit_profile_screen.dart'; // Import halaman edit profil
import 'home_screen.dart'; // Import halaman home_screen.dart

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
              'Tanggal Lahir', // Ganti dengan tanggal lahir Anda
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
              'Alamat', // Ganti dengan alamat Anda
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 16),
            Divider(
              color: Colors.grey.withOpacity(0.5),
            ),
            SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Navigasi ke halaman Edit Profil
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => EditProfileScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(200, 50), // Lebarnya bisa disesuaikan di sini
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
                    // Navigasi ke halaman HomeScreen
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  },
                  style: OutlinedButton.styleFrom(
                    minimumSize: Size(200, 50), // Lebarnya bisa disesuaikan di sini
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
