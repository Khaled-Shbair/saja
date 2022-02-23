import 'package:flutter/material.dart';

class PageViewWelcomeScreen extends StatelessWidget {
  const PageViewWelcomeScreen({
    required this.textTop,
    required this.textDownOne,
    required this.textDownTwo,
    required this.imageAsset,
    Key? key,
  }) : super(key: key);

  final String textTop;
  final String textDownOne;
  final String textDownTwo;
  final String imageAsset;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(
        start: 5,
        end: 5,
        top: 5,
        bottom: 5,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            textTop,
            style: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 28,
              color: Color(0xFFFF3D00),
            ),
          ),
          const SizedBox(height: 73),
          Image.asset(
            imageAsset,
          ),
          const SizedBox(height: 28),
          Text(textDownOne),
          const SizedBox(height: 7),
          Text(textDownTwo),
        ],
      ),
    );
  }
}
//const SizedBox(height: 137.4),
