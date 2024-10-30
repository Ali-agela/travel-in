import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_in/helper/constant.dart';

class FilterDivider extends StatelessWidget {
  const FilterDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: dividercolor.withOpacity(0.15),
      thickness: 10,
      height: 32,
      indent: 0,
      endIndent: 0,
    );
  }
}
