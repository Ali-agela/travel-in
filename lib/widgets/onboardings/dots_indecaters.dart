import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DotsIndecaters extends StatelessWidget {
  const DotsIndecaters({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: index == 1 ? 12 : 6,
          height: 6,
          decoration: ShapeDecoration(
            color: index == 1 ? Colors.white : Color(0xFF9F9F9F),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
          ),
        ),
        SizedBox(width: 4),
        Container(
          width: index == 2 ? 12 : 6,
          height: 6,
          decoration: ShapeDecoration(
            color: index == 2 ? Colors.white : Color(0xFF9F9F9F),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
          ),
        ),
        SizedBox(width: 4),
        Container(
          width: index == 3 ? 12 : 6,
          height: 6,
          decoration: ShapeDecoration(
            color: index == 3 ? Colors.white : Color(0xFF9F9F9F),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
          ),
        ),
      ],
    );
  }
}
