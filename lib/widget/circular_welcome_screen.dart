import 'package:flutter/material.dart';

class CircularWelcomeScreen extends StatelessWidget {
  const CircularWelcomeScreen({
    Key? key,
    required this.selected,
    required this.colorFull,
    required this.colorEmpty,
    this.margin = 0.0,
  }) : super(key: key);
  final double margin;
  final bool selected;
  final Color colorFull;
  final Color colorEmpty;

  @override
  Widget build(BuildContext context) {
    return TabPageSelectorIndicator(
      backgroundColor: selected ? colorFull : colorEmpty,
      borderColor: colorFull,
      size: 10,
    );
  }
}
