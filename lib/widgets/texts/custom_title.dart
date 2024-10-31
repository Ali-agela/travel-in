import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:travel_in/helper/constant.dart';
import 'package:travel_in/provider/dark_mode_provider.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle({
    super.key,
    required this.title,
    this.fontSize = 20,
    this.color, 
    this.fontwight = FontWeight.w700,
  });

  final String title;
  final double? fontSize;
  final Color? color;
  final FontWeight fontwight;

  @override
  Widget build(BuildContext context) {
    final darkModeConsumer = Provider.of<DarkModeProvider>(context);
    final textColor = color ?? (darkModeConsumer.isDark ? Colors.white : Colors.black); 

    return Consumer<DarkModeProvider>(
      builder: (context, darkModeConsumer, _) { 
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style: GoogleFonts.cairo(
                color: textColor,
                fontSize: fontSize,
                fontWeight: fontwight,
              ),
            ),
          ],
        );
      },
    );
  }
}