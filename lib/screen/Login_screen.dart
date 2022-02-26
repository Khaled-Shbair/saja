import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widget/Text_Field_Login.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      body: SafeArea(
        child: Stack(
          alignment: AlignmentDirectional.topCenter,
          children: [
            Image.asset('images/Mask Group 9.png'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Image.asset(
                      'images/Group 729.png',
                    ),
                    const Text(
                      '2eat resturant',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsetsDirectional.only(
                  start: 35,
                  end: 35,
                  top: 150,
                  bottom: 250,
                ),
                padding: const EdgeInsetsDirectional.only(
                  start: 20,
                  end: 14,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFFFFF),
                  borderRadius: BorderRadiusDirectional.circular(50),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Sign up',
                      style: TextStyle(
                        color: Color(0xFFFF3D00),
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextFieldLogin(
                      textInputType: TextInputType.emailAddress,
                      icon: Icon(Icons.email),
                      hintText: 'Username',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
