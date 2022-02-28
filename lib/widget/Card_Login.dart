import 'package:flutter/material.dart';

class CardLogin extends StatelessWidget {
  const CardLogin({
    required this.title,
    required this.color,
    required this.icon,
    required this.colorIcon,
    Key? key,
  }) : super(key: key);
  final String title;
  final Color color;
  final IconData icon;
  final Color colorIcon;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsetsDirectional.only(start: 20, end: 20),
      color: const Color(0xFFE6E6E6),
      child: ListTile(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(80),
        ),
        title: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 17,
            color: color,
          ),
        ),
        leading: Icon(
          icon,
          color: colorIcon,
          size: 35,
        ),
      ),
    );
  }
}
//
