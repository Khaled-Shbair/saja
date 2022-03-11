import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widget/product.dart';

class Departments1Screen extends StatefulWidget {
  const Departments1Screen({Key? key}) : super(key: key);

  @override
  State<Departments1Screen> createState() => _Departments1ScreenState();
}

class _Departments1ScreenState extends State<Departments1Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Product(
          title: 'Chicken Burger',
          sale: '\$15',
          image: 'images/pngegg3.png',
        ),
      ),

    );
  }
}

