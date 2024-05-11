import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  final String title;
  final Color? color;

  const BigText({super.key, required this.title, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          color: color ?? const Color.fromARGB(255, 226, 83, 255),
          fontWeight: FontWeight.w800,
          fontFamily: 'BriemHand',
          fontSize: 30),
    );
  }
}
