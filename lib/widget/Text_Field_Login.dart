import 'package:flutter/material.dart';

class TextFieldLogin extends StatelessWidget {
  const TextFieldLogin({
    required this.prefixIcon,
    required this.hintText,
    required this.textInputType,
    //  required this.textEditingController,
    Key? key,
  }) : super(key: key);
  final Icon prefixIcon;

  final String hintText;
  final TextInputType textInputType;

  //final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: textInputType,
      //  controller:textEditingController,
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
        prefixIcon: prefixIcon,
        prefixIconColor: const Color(0xFFF7C5B6),
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Color(0xFFF7C5B6),
          fontSize: 20,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
