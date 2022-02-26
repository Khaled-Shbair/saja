import 'package:flutter/material.dart';

class ButtonLogin extends StatelessWidget {
  const ButtonLogin({
    required this.text,
    required this.function,
    Key? key,
  }) : super(key: key);
  final String text;
  final Function() function;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: function,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 23,
          fontWeight: FontWeight.w400,
          color: Color(0xFFFFFFFF),
        ),
      ),
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsetsDirectional.only(
          top: 13,
          bottom: 13,
        ),
        shadowColor: Colors.yellow,
        primary: const Color(0xFFFF3D00),
        minimumSize: const Size(double.infinity, 55),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }

  void _performLogin() {
    if (_checkData()) {
      _login();
    }
  }

  bool _checkData() {
    return false;
  }

  void _login() {}
}
