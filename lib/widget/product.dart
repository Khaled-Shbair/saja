import 'package:flutter/material.dart';

import 'Star.dart';

class Product extends StatelessWidget {
  const Product({
    required this.title,
    required this.sale,
    required this.image,
    Key? key,
  }) : super(key: key);
  final String title;
  final String sale;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsetsDirectional.only(
              top: 10,
             // bottom: 24,
              start: 24,
              end: 20,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset('images/heart.png'),
                  ],
                ),
                const SizedBox(height: 13),
                Center(child: Image.asset(image)),
                const SizedBox(height: 34),
                Text(
                  title,
                  style: const TextStyle(
                    color: Color(0xFF08063A),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Row(
                  children: const [
                    Star(),
                    Star(),
                    Star(),
                    Star(),
                    Star(),
                    Star(),
                    Star(),
                  ],
                ),
                const SizedBox(height: 5),
                Text(
                  sale,
                  style: const TextStyle(
                    color: Color(0xFFFF3D00),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text(
              'order now',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: const Color(0xFFFF3D00),
              minimumSize: const Size(134, 38),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(15),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
