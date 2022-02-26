import 'package:flutter/material.dart';

import '../widget/Text_Field_Login.dart';

class SingUpScreen extends StatefulWidget {
  const SingUpScreen({Key? key}) : super(key: key);

  @override
  _SingUpScreenState createState() => _SingUpScreenState();
}

class _SingUpScreenState extends State<SingUpScreen> {
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
                 // bottom: 250,
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
                  children: [
                    const Text(
                      'Sign up',
                      style: TextStyle(
                        color: Color(0xFFFF3D00),
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    // const TextFieldLogin(
                    //   textInputType: TextInputType.emailAddress,
                    //   prefixIcon: Icon(Icons.email),
                    //   hintText: 'Username',
                    // ),
                    // const SizedBox(height: 20),
                    // const TextFieldLogin(
                    //   textInputType: TextInputType.emailAddress,
                    //   prefixIcon: Icon(Icons.email),
                    //   hintText: 'Email',
                    // ),
                    // const SizedBox(height: 20),
                    // TextField(
                    //   keyboardType: TextInputType.visiblePassword,
                    //   obscureText: false,
                    //   decoration: InputDecoration(
                    //     contentPadding: const EdgeInsetsDirectional.only(
                    //       top: 15,
                    //       bottom: 15,
                    //     ),
                    //     border: UnderlineInputBorder(
                    //       borderRadius: BorderRadius.circular(80),
                    //       borderSide: BorderSide.none,
                    //     ),
                    //     fillColor: const Color(0xFFF4F3F3),
                    //     filled: true,
                    //     prefixIcon: const Icon(Icons.lock),
                    //     prefixIconColor: const Color(0xFFF7C5B6),
                    //     suffixIcon: const Icon(Icons.remove_red_eye_outlined),
                    //     hintText: 'Password',
                    //     hintStyle: const TextStyle(
                    //       color: Color(0xFFF7C5B6),
                    //       fontSize: 20,
                    //       fontWeight: FontWeight.w400,
                    //     ),
                    //   ),
                    // ),
                    //
                    const Text(
                      'or Log in with',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF08063A),
                      ),
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