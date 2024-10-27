import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_in/helper/constant.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle({
    super.key,
    required this.title,
    this.fontSize = 20,
    this.color = Colors.black,  this.fontwight = FontWeight.w700,
  });
  final String title;
  final double? fontSize;
  final Color color;
  final FontWeight fontwight;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: GoogleFonts.cairo(
            color: color,
            fontSize: fontSize,
            fontWeight: fontwight,
          ),
        ),
      ],
    );
  }
}
