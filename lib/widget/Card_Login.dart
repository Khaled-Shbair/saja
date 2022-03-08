import 'package:flutter/material.dart';

class CardLogin extends StatelessWidget {
  const CardLogin({
    required this.title,
    required this.image,
    this.padding = 0,
    Key? key,
  }) : super(key: key);
  final String title;
  final String image;
  final double padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.centerStart,
      height: 50,
      width: 150,
      decoration: BoxDecoration(
        color: const Color(0xFFE6E6E6),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        children: [
          const SizedBox(width: 9),
          Image.asset(image),
          const SizedBox(width: 9),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 17,
              color: Color(0xFF08063A),
            ),
          ),
        ],
      ),
    );
  }
}

/*

 Container(
      padding: EdgeInsetsDirectional.only(
        end: padding,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFE6E6E6),
        borderRadius: BorderRadius.circular(50),
      ),
      child: ListTile(
        contentPadding: const EdgeInsetsDirectional.only(
          start: 5,
        ),
        minLeadingWidth: 30,
        title: Text(
          title,
          textAlign: TextAlign.start,
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 17,
            color: Color(0xFF08063A),
          ),
        ),
        leading: Icon(
          icon,
          color: colorIcon,
          size: 35,
        ),
      ),
    );
 */
