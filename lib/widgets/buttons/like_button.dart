import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_in/helper/constant.dart';

class CustomLikeButton extends StatefulWidget {
  const CustomLikeButton({super.key});
  @override
  State<CustomLikeButton> createState() => _BackButtonState();
}

class _BackButtonState extends State<CustomLikeButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.circle, color: Colors.black.withOpacity(0.15)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Image.asset(
          'assets/icons/like_icon.png',
          width: 32,
          height: 32,
        ),
      ),
    );
  }
}
