import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_in/helper/constant.dart';

class CustomBackButton extends StatefulWidget {
  const CustomBackButton({super.key});
  @override
  State<CustomBackButton> createState() => _BackButtonState();
}

class _BackButtonState extends State<CustomBackButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.circle, color: whitegrey),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Image.asset(
          'assets/icons/arrow_icon.png',
          width: 32,
          height: 32,
        ),
      ),
    );
  }
}
