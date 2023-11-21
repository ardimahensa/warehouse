import 'package:flutter/material.dart';

import 'vertical_text.dart';

class CardMenu extends StatelessWidget {
  final String text;
  final double containerWidth;
  final double containerHeight;
  final double fontSize;
  final Color backgroundColor;
  final Color foregroundColor;
  final String image;

  const CardMenu({
    super.key,
    required this.text,
    this.containerWidth = 59,
    this.containerHeight = 180,
    this.fontSize = 18.0,
    required this.backgroundColor,
    required this.foregroundColor,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.centerStart,
      children: [
        Center(
          child: Container(
            width: 315,
            height: 180,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: backgroundColor),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 60,
              height: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: foregroundColor,
              ),
              child: Center(
                child: VerticalText(text: text),
              ),
            ),
            Image.asset(image),
          ],
        ),
      ],
    );
  }
}
