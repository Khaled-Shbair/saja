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
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(textTop),
        Image.asset(imageAsset),
        Text(textDownOne),
        Text(textDownTwo),
      ],
    );
  }
}
