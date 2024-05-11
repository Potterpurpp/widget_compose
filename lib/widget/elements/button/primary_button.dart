import 'package:flutter/material.dart';
import 'package:wiget_compose/widget/elements/texts/small_text.dart';

class PrimaryButton extends StatelessWidget {
  final String title;
  final Color? titleColor;

  const PrimaryButton({super.key, required this.title, this.titleColor});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 14, 71, 65),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(14)))),
      child: SmallText(
        title: title,
        color: titleColor,
      ),
    );
  }
}
