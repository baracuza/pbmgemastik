import 'package:flutter/material.dart';
import 'package:ukm_map/viewmodels/signup_controller.dart';
import 'package:ukm_map/views/login_screen.dart'; // Import HomeScreen

class RegisterScreen extends StatelessWidget {
  final SignUpController controller = SignUpController();

  RegisterScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/Logo.png', // Pastikan gambar ada di path ini
                width: 150,
                height: 150,
              ),
              const SizedBox(height: 16),
              const Text(
                "Daftar untuk membuat akun",
                style: TextStyle(
                  fontSize: 18,
                  // fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Nama Pengguna',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Alamat Email',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Nomor Telepon',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Sandi',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Ulangi Sandi',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: 300, // Ukuran tombol lebih besar
                height: 50, // Tinggi tombol lebih besar
                child: ElevatedButton(
                  onPressed: () {
                    // Arahkan ke halaman utama
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue, // Warna tombol biru
                    foregroundColor: Colors.white, // Warna teks putih
                    textStyle: const TextStyle(
                      fontSize: 18, // Ukuran teks lebih besar
                    ),
                  ),
                  child: const Text('Daftar'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
