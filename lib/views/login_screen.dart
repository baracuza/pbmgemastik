import 'package:flutter/material.dart';
import 'package:ukm_map/viewmodels/signup_controller.dart';
import 'package:ukm_map/views/register_screen.dart'; // Import RegisterScreen

class Login extends StatelessWidget {
  final SignUpController controller = SignUpController();

  Login({Key? key});

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
                'assets/images/logoSplash.png', // Pastikan gambar ada di path ini
                width: 150,
                height: 150,
              ),
              const SizedBox(height: 16),
              const Text(
                "Masuk untuk menikmati fitur kami",
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
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
              ),
              TextButton(
                onPressed: () {
                  // Implementasi aksi lupa password di sini
                },
                child: const Text('Lupa Password'),
              ),
              SizedBox(
                width: 300, // Ukuran tombol lebih besar
                height: 50, // Tinggi tombol lebih besar
                child: ElevatedButton(
                  onPressed: () {
                    // Arahkan ke halaman Home langsung tanpa validasi
                    controller.signUp(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue, // Warna tombol biru
                    foregroundColor: Colors.white, // Warna teks putih
                    textStyle: const TextStyle(
                      fontSize: 18, // Ukuran teks lebih besar
                    ),
                  ),
                  child: const Text('Masuk'),
                ),
              ),
              const SizedBox(height: 16),
              GestureDetector(
                onTap: () {
                  // Arahkan ke halaman pendaftaran
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterScreen()),
                  );
                },
                child: const Text(
                  'Belum memiliki akun? Daftar sekarang',
                  style: TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
