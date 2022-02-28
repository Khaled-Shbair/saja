import 'package:flutter/material.dart';

import '../widget/Button_Login.dart';
import '../widget/Text_Field_Login.dart';

class ForgetPasswordChangePasswordScreen extends StatefulWidget {
  const ForgetPasswordChangePasswordScreen({Key? key}) : super(key: key);

  @override
  _ForgetPasswordChangePasswordScreenState createState() =>
      _ForgetPasswordChangePasswordScreenState();
}

class _ForgetPasswordChangePasswordScreenState
    extends State<ForgetPasswordChangePasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leadingWidth: 100,
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
      ),
      backgroundColor: const Color(0xFFFAFAFA),
      body: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
          Image.asset('images/Mask Group 9.png'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  const SizedBox(height: 60),
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
          Padding(
            padding: const EdgeInsetsDirectional.only(
              start: 35,
              end: 35,
              top: 150,
              bottom: 250,
            ),
            child: Container(
              padding: const EdgeInsetsDirectional.only(
                start: 17,
                end: 17,
                top: 45,
              ),
              decoration: BoxDecoration(
                color: const Color(0xFFFFFFFF),
                borderRadius: BorderRadiusDirectional.circular(20),
              ),
              child: ListView(
                padding: const EdgeInsetsDirectional.only(
                    // top: 48,
                    ),
                children: [
                  const SizedBox(height: 30),
                  const Text(
                    'Change the Password',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFFF3D00),
                      fontSize: 21,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 60),
                  TextField(
                    keyboardType: TextInputType.number,
                    obscureText: false,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsetsDirectional.only(
                        top: 15,
                        bottom: 15,
                      ),
                      border: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(80),
                        borderSide: BorderSide.none,
                      ),
                      fillColor: const Color(0xFFF4F3F3),
                      filled: true,
                      prefixIcon: const Icon(
                        Icons.lock,
                        color: Color(0xFFF7C5B6),
                      ),
                      prefixIconColor: const Color(0xFFF7C5B6),
                      suffixIcon: const Icon(
                        Icons.remove_red_eye_rounded,
                        color: Color(0xFFF7C5B6),
                      ),
                      hintText: 'New Password',
                      hintStyle: const TextStyle(
                        color: Color(0xFFF7C5B6),
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const TextFieldLogin(
                    textInputType: TextInputType.number,
                    prefixIcon: Icon(
                      Icons.lock_open,
                      color: Color(0xFFF7C5B6),
                    ),
                    hintText: 'Confirm New Password',
                  ),
                  const SizedBox(height: 20),
                  ButtonLogin(
                    function: () {},
                    text: 'Reset password',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
