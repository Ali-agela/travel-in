import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_in/helper/constant.dart';

class StarsFilterRow extends StatefulWidget {
  const StarsFilterRow({super.key, required this.starsnumber});
  final int starsnumber;

  @override
  State<StarsFilterRow> createState() => _StarsFilterRowState();
}

class _StarsFilterRowState extends State<StarsFilterRow> {
    bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
                setState(() {
          isClicked = !isClicked;
        });

      },
      child: Container(
        decoration: BoxDecoration(
          color: isClicked ? baleblue.withOpacity(0.5) 
            :Colors.white,
          border: Border.all(color: dividercolor.withOpacity(0.8), width: 2),
          borderRadius: BorderRadius.circular(24),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
            widget.starsnumber, 
            (index) => Icon(
              Icons.star,
              color: yellow,
            ),
          ),
        ),
        padding: EdgeInsets.all(4),
      ),
    );
  }
}