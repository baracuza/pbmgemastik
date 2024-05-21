// lib/controllers/signup_controller.dart
import 'package:flutter/material.dart';
import 'package:ukm_map/views/home_screen.dart';
import 'package:ukm_map/views/kategori_tanah.dart';
import 'package:ukm_map/views/login_screen.dart';

class SignUpController {
  void signUp(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => HomeScreen()),
    );
  }
  void login(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Login()),
    );
  }
  void TanahScreen(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LandCategoryScreen()),
    );
  }
}
