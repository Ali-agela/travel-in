import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SpasificationText extends StatelessWidget {
  const SpasificationText({super.key, required this.text, required this.value});
  final String text;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              text,
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(
              width: 25,
            ),
            Text(value)
          ],
        ),
        const  Divider()
      ],
    );
  }
}