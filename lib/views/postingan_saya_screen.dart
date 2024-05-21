import 'package:flutter/material.dart';

class PostinganSayaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Postingan Saya'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: 6, // Jumlah postingan
          itemBuilder: (context, index) {
            return Card(
              margin: EdgeInsets.only(bottom: 16),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Judul Postingan $index',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Image.network(
                      'https://via.placeholder.com/300',
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Deskripsi singkat mengenai postingan ini. Ini adalah postingan ke-$index.',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[600],
                      ),
                    ),
                    SizedBox(height: 16), // Tambahkan spasi sebelum tombol

                    // Tombol Edit dan Hapus
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {
                            // Aksi ketika tombol edit ditekan
                            // Misalnya: Navigator.push(...);
                          },
                          child: Text(
                            'Edit',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                        SizedBox(width: 16), // Spasi antara tombol
                        TextButton(
                          onPressed: () {
                            // Aksi ketika tombol hapus ditekan
                            // Misalnya: showDialog(...);
                          },
                          child: Text(
                            'Hapus',
                            style: TextStyle(color: Colors.red),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
