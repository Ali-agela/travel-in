import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:travel_in/helper/constant.dart';
import 'package:travel_in/provider/dark_mode_provider.dart';

class CustomeTextBox extends StatefulWidget {
  const CustomeTextBox(
      {super.key,
      required this.hintText,
      required this.imagePath,
      required this.controller,
      this.isPassword = false,
      this.preFexIcon,
      required this.validate});
  final String hintText;
  final String imagePath;
  final TextEditingController controller;
  final bool isPassword;
  final Widget? preFexIcon;
  final FormFieldValidator<String?> validate;
  @override
  State<CustomeTextBox> createState() => _CustomeTextBoxState();
}

class _CustomeTextBoxState extends State<CustomeTextBox> {
  @override
  Widget build(BuildContext context) {
    return Consumer<DarkModeProvider>(
      builder: (context, darkModeConsumer, _) {
        return TextFormField(
          validator: widget.validate,
          obscureText: widget.isPassword,
          controller: widget.controller,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 17),
            filled: true,
            fillColor:     darkModeConsumer.isDark
               ?greycolor
               :greybox,
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
              color:      darkModeConsumer.isDark
               ?lightgrey
               :darktxtcolor,

              fontSize: 16,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide.none,
            ),
          ),
        );
      }
    );
  }
}
