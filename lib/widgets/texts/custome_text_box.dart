import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_in/helper/constant.dart';

class CustomeTextBox extends StatefulWidget {
  const CustomeTextBox(
      {super.key,
      required this.hintText,
      required this.imagePath,
      required this.controller,
      this.isPassword = false,
      this.preFexIcon});
  final String hintText;
  final String imagePath;
  final TextEditingController controller;
  final bool isPassword;
  final Widget? preFexIcon;
  @override
  State<CustomeTextBox> createState() => _CustomeTextBoxState();
}

class _CustomeTextBoxState extends State<CustomeTextBox> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.isPassword,
      controller: widget.controller,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 17),
        filled: true,
        fillColor: Color(0xfff3f4f6),
        suffixIcon: widget.preFexIcon,
        prefixIcon: Padding(
          padding: EdgeInsets.only(left: 24, right: 17),
          child: Image.asset(
            widget.imagePath,
            width: 24,
            height: 24,
          ),
        ),
        hintText: widget.hintText,
        hintTextDirection: TextDirection.rtl,
        hintStyle: GoogleFonts.cairo(
          color: greytxt,
          fontSize: 16,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
