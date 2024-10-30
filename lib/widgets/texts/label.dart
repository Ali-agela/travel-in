import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:travel_in/helper/constant.dart';
import 'package:travel_in/provider/dark_mode_provider.dart';

class Label extends StatelessWidget {
  const Label(
      {super.key, required this.title, this.subTitle, this.fontSize = 16});
  final String title;
  final String? subTitle;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return Consumer<DarkModeProvider>(
      builder: (context, darkModeConsumer, _) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style: GoogleFonts.cairo(
                color:  darkModeConsumer.isDark
               ?white
               :Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: subTitle != null ? 4 : 0),
            subTitle != null
                ? Text(
                    subTitle!,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.cairo(
                    color:  darkModeConsumer.isDark
                  ?whitegrey
                  :greytxt,
                      fontSize: fontSize,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                : SizedBox()
          ],
        );
      }
    );
  }
}
