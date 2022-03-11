import 'package:flutter/material.dart';

class Star extends StatelessWidget {
  const Star({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.star,
      color: Color(0xFFFFED00),
      size: 12,
    );
  }
}
