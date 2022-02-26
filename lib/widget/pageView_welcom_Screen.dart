import 'package:flutter/material.dart';

import 'circular_welcome_screen.dart';

class PageViewWelcomeScreen extends StatelessWidget {
  const PageViewWelcomeScreen({
    required this.textTop,
    required this.textDownOne,
    required this.textDownTwo,
    required this.imageAsset,
    this.top = 0,
    this.bottom = 0,
    this.start = 0,
    this.end = 0,
    Key? key,
  }) : super(key: key);

  final String textTop;
  final String textDownOne;
  final String textDownTwo;
  final String imageAsset;
  final double top;
  final double bottom;
  final double start;
  final double end;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            textTop,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 28,
              color: Color(0xFFFF3D00),
            ),
          ),
          const SizedBox(height: 84),
          Image.asset(
            imageAsset,
          ),
          const SizedBox(height: 190.4),
         // const SizedBox(height: 50),
          Text(
            textDownOne,
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 7),
          Text(
            textDownTwo,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w100,
              color: Color(0xFF08063A),
            ),
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
