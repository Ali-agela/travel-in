import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_in/helper/constant.dart';

class BlueButton extends StatelessWidget {
  const BlueButton(
      {super.key,
      required this.onTap,
      required this.buttonText,
      this.filled = true,  this.width = 312});
  final Function onTap;
  final String buttonText;
  final bool filled;
  final double width;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: filled ? blue1 : Colors.transparent,
        elevation: 0,
        shadowColor: Colors.transparent,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: filled
                ? BorderSide.none
                : const BorderSide(color: blue1, width: 2.0)),
      ),
      onPressed: () {
        onTap();
      },
      child: SizedBox(
        height: 58,
        width: width,
        child: Center(
          child: Text(
            buttonText,
            textAlign: TextAlign.center,
            style: GoogleFonts.cairo(
              color: filled ? Colors.white : blue1,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              height: 0,
            ),
          ),
        ),
      ),
    );
  }
}
