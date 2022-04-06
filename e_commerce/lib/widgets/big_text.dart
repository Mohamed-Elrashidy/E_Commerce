import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  TextOverflow overFlow;
  BigText({
    this.color = const Color(0xFF332d2b),
    required this.text,
    this.size = 20,
    this.overFlow = TextOverflow.ellipsis,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overFlow,
      style:
          TextStyle(color: color, fontWeight: FontWeight.w400, fontSize: size),
    );
  }
}