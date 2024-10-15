import 'package:flutter/material.dart';
import 'package:travel_in/helper/size.dart';

class TopImage extends StatelessWidget {
  const TopImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Image.asset(
          'assets/logo/top_screen.png',
          width: getSize(context).width,
          fit: BoxFit.contain,
        ),
      ],
    );
  }
}
