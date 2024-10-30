import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_in/helper/constant.dart';
import 'package:travel_in/provider/dark_mode_provider.dart';

class VendorIcon extends StatelessWidget {
  const VendorIcon({super.key, required this.path, required this.onTap});
  final String path;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Consumer<DarkModeProvider>(
      builder: (context, darkModeConsumer, _) {
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
              color:    darkModeConsumer.isDark
               ? greycolor
               : white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 8),
              child: Image.asset(path, width: 40, height: 40),
            ),
          ),
        );
      }
    );
  }
}
