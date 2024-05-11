import 'package:flutter/material.dart';
import 'package:wiget_compose/widget/elements/button/primary_button.dart';
import 'package:wiget_compose/widget/elements/texts/big_text.dart';

class HomeJunButton extends StatelessWidget {
  final String imgUrl;
  final String title;
  final String buttonTitle;
  const HomeJunButton(
      {super.key,
      required this.imgUrl,
      required this.title,
      required this.buttonTitle});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 250,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Image.network(
              imgUrl,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                children: [
                  Expanded(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      BigText(title: title),
                      PrimaryButton(
                        title: buttonTitle,
                        titleColor: Colors.white,
                      )
                    ],
                  ))
                ],
              ),
            )
          ],
        ));
  }
}
