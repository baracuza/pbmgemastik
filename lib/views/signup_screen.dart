import 'package:flutter/material.dart';
import 'package:ukm_map/viewmodels/signup_controller.dart';
import 'package:ukm_map/views/register_screen.dart'; // Import RegisterScreen

class SignUpScreen extends StatelessWidget {
  final SignUpController controller = SignUpController();

  SignUpScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
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
            SizedBox(
              width: 300, // Ukuran tombol lebih besar
              height: 50, // Tinggi tombol lebih besar
              child: ElevatedButton(
                onPressed: () {
                  // Arahkan ke halaman Home langsung tanpa validasi
                  controller.login(context);
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
            SizedBox(
              width: 300, // Ukuran tombol lebih besar
              height: 50, // Tinggi tombol lebih besar
              child: ElevatedButton(
                onPressed: () {
                  // Arahkan ke halaman pendaftaran
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterScreen()),
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
    );
  }
}
