import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_in/helper/size.dart';
import 'package:travel_in/provider/dark_mode_provider.dart';

class LogoImage extends StatelessWidget {
  const LogoImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<DarkModeProvider>(builder: (context, darkModeConsumer, _) {
      return Image.asset(
        darkModeConsumer.isDark
            ? "assets/logo/darklogo.png"
            : "assets/logo/logo.png",
        width: getSize(context).width * 0.4,
        fit: BoxFit.contain,
      );
    });
  }
}
