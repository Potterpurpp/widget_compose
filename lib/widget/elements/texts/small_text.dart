import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  final String title;
  final Color? color;
  final TextStyle? textStyle;

  const SmallText({super.key, required this.title, this.color, this.textStyle});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Text(
        title,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(color: color ?? Colors.black),
      ),
    );
  }
}
