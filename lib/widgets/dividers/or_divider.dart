import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_in/helper/constant.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: Colors.black,
            thickness: 2,
          ),
        ),
        Text(
          '   او سجل باستخدام   ',
          textDirection: TextDirection.ltr,
          style: GoogleFonts.cairo(
            color: blue1,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        Expanded(
          child: Divider(
            color: Colors.black,
            thickness: 2,
          ),
        ),
      ],
    );
  }
}