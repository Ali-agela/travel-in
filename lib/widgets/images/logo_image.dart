import 'package:flutter/material.dart';
import 'package:travel_in/helper/size.dart';

class LogoImage extends StatelessWidget {
  const LogoImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/logo/logo.png",
      width: getSize(context).width * 0.5,
      fit: BoxFit.contain,
    );
  }
}