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
        elevation: 0,
        leading: const Icon(Icons.arrow_back_ios),
      ),
      backgroundColor: const Color(0xFFFAFAFA),
      body: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
          Image.asset('images/Mask Group 9.png'),
          Column(
            children: [
              const SizedBox(height: 47.3),
              Image.asset(
                'images/Group 729.png',
              ),
              const SizedBox(height: 8),
              const Text(
                '2eat resturant',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFFFFFFFF),
                ),
              ),
              const SizedBox(height: 30),
              Expanded(
                child: Container(
                  margin: const EdgeInsetsDirectional.only(
                    start: 35,
                    end: 35,
                    // bottom: 200,
                  ),
                  padding: const EdgeInsetsDirectional.only(
                    start: 20,
                    end: 14,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFFFFF),
                    borderRadius: BorderRadiusDirectional.circular(20),
                  ),
                  child: ListView(
                    physics: const NeverScrollableScrollPhysics(),
                    padding: const EdgeInsetsDirectional.only(
                      top: 40,
                    ),
                    children: [
                      const Text(
                        'Change the Password',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFFFF3D00),
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 45),
                      TextField(
                        keyboardType: TextInputType.visiblePassword,
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
                            Icons.remove_red_eye_outlined,
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
                      const SizedBox(height: 26),
                      ButtonLogin(
                        text: 'Reset password',
                        function: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
