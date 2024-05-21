// lib/views/splash_screen.dart
import 'package:flutter/material.dart';
import 'package:ukm_map/views/signup_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Delayed navigation to signup screen after 3 seconds
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SignUpScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 135, 9, 1),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromRGBO(255, 255, 255, 1),
              Color.fromRGBO(251, 251, 251, 1),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logoSplash.png', // Ensure you have the image in this path
                width: 150,
                height: 150,
              ),
              const SizedBox(height: 16),
              // RichText(
              //   text: const TextSpan(
              //     text: 'UKM-',
              //     style: TextStyle(
              //       fontSize: 32,
              //       color: Color.fromRGBO(50, 74, 173, 1),
              //       fontWeight: FontWeight.bold,
              //     ),
              //     children: <TextSpan>[
              //       TextSpan(
              //         text: 'MAP',
              //         style: TextStyle(
              //           fontSize: 32,
              //           color: Colors.white,
              //           fontWeight: FontWeight.bold,
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
