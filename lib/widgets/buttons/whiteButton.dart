import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_in/helper/constant.dart';

class whiteButton extends StatelessWidget {
  const whiteButton(
      {super.key,
      required this.onTap,
      required this.buttonText,
      this.width = 312,  this.color = bluegreen});
  final Function onTap;
  final String buttonText;
  final double? width;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white.withOpacity(0.5),
        elevation: 0,
        shadowColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: BorderSide(
            color: color,
            width: 2.0,
          ),
        ),
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
            style: const TextStyle(
              color: Color(0xFF1C496B),
              fontFamily: 'Cairo',
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
