// lib/main.dart
import 'package:flutter/material.dart';
import 'package:ukm_map/views/splash_screen.dart';
import 'package:ukm_map/views/signup_screen.dart';
import 'package:ukm_map/views/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UKM-MAP',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
      routes: {
        '/signup': (context) => SignUpScreen(),
        '/home': (context) => HomeScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
