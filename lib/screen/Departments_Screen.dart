import 'package:flutter/material.dart';

import '../widget/product.dart';

class DepartmentsScreen extends StatefulWidget {
  const DepartmentsScreen({Key? key}) : super(key: key);

  @override
  State<DepartmentsScreen> createState() => _DepartmentsScreenState();
}

class _DepartmentsScreenState extends State<DepartmentsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Sections',
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.w500,
            color: Color(0xFFFF3D00),
          ),
        ),
        leading: const Icon(Icons.arrow_back_ios, color: Colors.black),
        centerTitle: true,
        actions: [
          CircleAvatar(
            child: Image.asset('images/profile.png'),
          ),
          const CircleAvatar(
            radius: 5,
            backgroundColor: Colors.transparent,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsetsDirectional.only(
          top: 37,
          start: 15,
          end: 15,
        ),
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                contentPadding: const EdgeInsetsDirectional.only(
                  start: 20,
                  top: 12,
                  bottom: 14,
                ),
                hintText: 'Search',
                hintStyle: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
                suffixIcon: const CircleAvatar(
                  backgroundColor: Color(0xFFFF3D00),
                  child: Icon(Icons.search),
                ),
                fillColor: const Color(0xFFEBEBEB),
                filled: true,
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
            Expanded(
              child: GridView(
                padding: const EdgeInsets.symmetric(vertical: 49),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 29,
                  childAspectRatio: 162 / 300,
                ),
                children: const [
                  Product(
                    title: 'Chicken Burger',
                    sale: '\$15',
                    image: 'images/purger1.png',
                  ),
                  Product(
                    title: 'Beef  Burger',
                    sale: '\$10',
                    image: 'images/pizza1.png',
                  ),
                  Product(
                    title: 'Italian Pizza',
                    sale: '\$5',
                    image: 'images/pizza1.png',
                  ),
                  Product(
                    title: 'Cheese Pizza',
                    sale: '\$20',
                    image: 'images/pizza3.png',
                  ),
                  Product(
                    title: 'Cheese Burger',
                    sale: '\$25',
                    image: 'images/pngegg3.png',
                  ),
                  Product(
                    title: 'Pizza Margherita',
                    sale: '\$26',
                    image: 'images/pizza2.png',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
