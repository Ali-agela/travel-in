import 'package:flutter/material.dart';
import 'package:travel_in/helper/constant.dart';

class OneNumberText extends StatelessWidget {
  OneNumberText({super.key, required this.controller});
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: greytxt.withOpacity(0.5),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 18),
        child: TextFormField(
          controller: controller,
          textAlign: TextAlign.center,
          maxLength: 1,
          textInputAction: TextInputAction.next,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.normal,
          ),
          decoration: const InputDecoration(
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
