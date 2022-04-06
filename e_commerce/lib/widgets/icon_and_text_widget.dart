import 'package:flutter/material.dart';
import 'package:e_commerce/widgets/big_text.dart';
import 'package:e_commerce/widgets/small_text.dart';

class IconAndTextWidget extends StatelessWidget {
  final IconData icon;
  final String text;

  final Color? iconColor;

  const IconAndTextWidget(
      {Key? key, required this.icon, this.iconColor, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Icon(
        icon,
        color: iconColor,
      ),
      SizedBox(
        width: 5,
      ),
      SmallText(
        text: text,
      )
    ]);
  }
}
