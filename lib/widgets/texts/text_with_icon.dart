import 'package:flutter/cupertino.dart';

class TextWithIcon extends StatelessWidget {
  const TextWithIcon(
      {super.key,
      required this.text,
      required this.icon,
      this.backGroundColor,
      this.padding = 9,
      this.space = 0});
  final String text;
  final String icon;
  final Color? backGroundColor;
  final double padding;
  final double space;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            decoration: BoxDecoration(
              color: backGroundColor,
              borderRadius: BorderRadius.circular(50),
            ),
            padding: EdgeInsets.all(padding),
            child: Image.asset(icon)),
        SizedBox(width: space),
        Text(text),
      ],
    );
  }
}
