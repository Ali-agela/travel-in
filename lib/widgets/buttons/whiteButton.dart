import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class whiteButton extends StatelessWidget {
  const whiteButton({super.key, required this.onTap, required this.buttonText});
  final Function onTap;
  final String buttonText;
  

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white.withOpacity(0.5),
        elevation: 0,
        shadowColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      onPressed: () {
          onTap();
      },
      child:  SizedBox(
        height: 58,
        width: 312,
        child: Center(
          child: Text(
            buttonText,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Color(0xFF1C496B),
              fontSize: 18,
              fontFamily: 'Cairo',
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
        ),
      ),
    );
  }
}
