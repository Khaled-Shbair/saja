import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        '2eat resturant',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 28,
          color: Color(0xFF08063A),
        ),
      ),
    );
  }
}
//0xFF