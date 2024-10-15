import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VendorIcon extends StatelessWidget {
  const VendorIcon({super.key, required this.path, required this.onTap});
  final String path;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Color(0x21000000),
              blurRadius: 13,
              offset: Offset(0, 10),
              spreadRadius: 0,
            )
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 8),
          child: Image.asset(path, width: 40, height: 40),
        ),
      ),
    );
  }
}
