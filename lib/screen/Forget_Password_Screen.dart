import 'package:flutter/material.dart';

import '../widget/Button_Login.dart';
import '../widget/Text_Field_Login.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  _ForgetPasswordScreenState createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
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
                        'Forget Password',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFFFF3D00),
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 3),
                      const Text(
                        'Enter your Email address or\n mobile phone to reset the password',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFFFF3D00),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 27),
                      const TextFieldLogin(
                        textInputType: TextInputType.emailAddress,
                        prefixIcon: Icon(
                          Icons.email_sharp,
                          color: Color(0xFFF7C5B6),
                        ),
                        hintText: 'Email',
                      ),
                      const SizedBox(height: 9),
                      const Text(
                        'Or',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFFF3D00),
                        ),
                      ),
                      const SizedBox(height: 7),
                      const TextFieldLogin(
                        textInputType: TextInputType.emailAddress,
                        prefixIcon: Icon(
                          Icons.phone_iphone,
                          color: Color(0xFFF7C5B6),
                        ),
                        hintText: 'Phone',
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
