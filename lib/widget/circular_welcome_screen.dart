import 'package:flutter/material.dart';

class CircularWelcomeScreen extends StatelessWidget {
  const CircularWelcomeScreen({
    Key? key,
    required this.selected,
    this.margin = 0.0,
  }) : super(key: key);
  final double margin;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return TabPageSelectorIndicator(
      backgroundColor:
          selected ? const Color(0xFFFF3D00) : const Color(0xFFFAFAFA),
      borderColor: const Color(0xFFFF3D00),
      size: 10,
    );
  }
}
