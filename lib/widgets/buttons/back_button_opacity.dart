
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomBackButtonwithOpacity extends StatefulWidget {
  CustomBackButtonwithOpacity({super.key,this.isMain=false});

  final bool isMain;
  @override
  State<CustomBackButtonwithOpacity> createState() => _BackButtonState();
}

class _BackButtonState extends State<CustomBackButtonwithOpacity> {
  @override
  Widget build(BuildContext context) {
    return widget.isMain? SizedBox() :GestureDetector(
      onTap: (){
        Navigator.pop(context);
      },
      child: Container(
        decoration: BoxDecoration(
            shape: BoxShape.circle, color: Colors.black.withOpacity(0.15)),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Image.asset(
            'assets/icons/white_arrow_icon.png',
            width: 32,
            height: 32,
          ),
        ),
      ),
    );
  }
}
