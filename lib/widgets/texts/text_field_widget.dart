import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_in/helper/constant.dart';

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget(
      {super.key,
      this.hint,
      this.label,
      this.obSecure = false,
      this.perffix,
      this.suffix,
      this.isEnabled = false,
      required this.controller,
      required this.validator,
      this.showBorder = false});

  final TextEditingController controller;
  final FormFieldValidator<String?> validator;
  final String? hint;
  final String? label;
  final bool obSecure;
  final Widget? perffix;
  final Widget? suffix;
  final bool isEnabled;
  final bool showBorder;
  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: widget.controller,
        enabled: widget.isEnabled,
        obscureText: widget.obSecure,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
          filled: true,
          fillColor: Color(0xfff3f4f6),
          hintText: widget.hint,
          hintTextDirection: TextDirection.rtl,
          hintStyle: GoogleFonts.cairo(
            color: darktxtcolor,
            fontSize: 16,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(color: Colors.black),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(
                color: !widget.isEnabled && widget.showBorder
                    ? Colors.black
                    : Color(0xfff3f4f6)),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(color: Colors.red),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(color: Colors.blue),
          ),
        ),
      ),
    );
  }
}
