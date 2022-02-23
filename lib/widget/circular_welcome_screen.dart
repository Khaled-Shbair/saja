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
    return Container(
      margin: EdgeInsetsDirectional.only(end: margin),
      height: 10,
      width: 10,
      decoration: BoxDecoration(
        boxShadow: const [
        ],
        color: selected ? const Color(0xFFFF3D00) : const Color(0xFFFAFAFA),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
