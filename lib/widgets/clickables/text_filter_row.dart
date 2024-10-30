import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_in/helper/constant.dart';
import 'package:travel_in/widgets/texts/custom_title.dart';

class TextFilterRow extends StatefulWidget {
  const TextFilterRow(
      {super.key,
      required this.subtitle,
      required this.onTap,});
  final String subtitle;
  final Function onTap;
  @override
  State<TextFilterRow> createState() => _StarsFilterRowState();
}

class _StarsFilterRowState extends State<TextFilterRow> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isClicked = !isClicked;
        });
        widget.onTap();
      },
      child: Container(
        decoration: BoxDecoration(
          color: isClicked ? baleblue.withOpacity(0.5) : Colors.white,
          border: Border.all(color: dividercolor.withOpacity(0.8), width: 2),
          borderRadius: BorderRadius.circular(24),
        ),
        child: CustomTitle(
          title: widget.subtitle,
          fontSize: 14,
          fontwight: FontWeight.normal,
        ),
        padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      ),
    );
  }
}
