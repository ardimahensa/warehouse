import 'package:flutter/material.dart';
import 'package:warehouse/utils/utils.dart';

class VerticalText extends StatelessWidget {
  final String text;
  const VerticalText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: text.split('').map(
            (char) {
              return Text(char, style: label);
            },
          ).toList()),
    );
  }
}
