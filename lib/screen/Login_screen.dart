import 'package:flutter/material.dart';
import '../widget/Button_Login.dart';
import '../widget/Card_Login.dart';
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
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(Icons.arrow_back_ios),
      ),
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
                    bottom: 230,
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
                    shrinkWrap: true,
                    padding: const EdgeInsetsDirectional.only(
                      top: 40,
                    ),
                    children: [
                      const Text(
                        'Login',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFFFF3D00),
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 27),
                      const TextFieldLogin(
                        // textEditingController: _emailEditingController,
                        textInputType: TextInputType.emailAddress,
                        prefixIcon: Icon(
                          Icons.email_sharp,
                          color: Color(0xFFF7C5B6),
                        ),
                        hintText: 'Username',
                      ),
                      const SizedBox(height: 20),
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
                          hintText: 'Password',
                          hintStyle: const TextStyle(
                            color: Color(0xFFF7C5B6),
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      const SizedBox(height: 5),
                      RichText(
                        textAlign: TextAlign.end,
                        text: const TextSpan(
                          text: 'Forget Password?',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.underline,
                            color: Color(0xFFFF3D00),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      ButtonLogin(
                        text: 'Login',
                        function: () {},
                      ),
                      const SizedBox(height: 24),
                      const Text(
                        'or Log in with',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF08063A),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: const [
                          Expanded(
                            child: CardLogin(
                              title: 'Facebook',
                              image: 'images/facebook.png',
                            ),
                          ),
                          SizedBox(width: 5),
                          Expanded(
                            child: CardLogin(
                              title: 'Google',
                              image: 'images/google.png',
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 23),
                      Center(
                        child: RichText(
                          text: const TextSpan(
                            text: 'Don\'t Have any account ? ',
                            style: TextStyle(
                              color: Color(0xFF08063A),
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                            children: [
                              TextSpan(
                                text: 'Sign up ',
                                style: TextStyle(
                                  color: Color(0xFFFF3D00),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
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
