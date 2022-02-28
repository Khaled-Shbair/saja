import 'package:flutter/material.dart';

import '../widget/Card_Login.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoginScreen'),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsetsDirectional.all(20),
            child:  CardLogin(
              title: 'Facebook',
              color: Color(0xFF08063A),
              icon: Icons.facebook,
              colorIcon: Color(0xFF14047A),
            ),
            width: 150,
            height: 41,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Color(0xFFE6E6E6),
            ),
          ),
          SizedBox(height:20),
          ],
      ),
    );
  }
}
