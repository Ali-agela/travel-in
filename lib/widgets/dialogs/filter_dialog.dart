import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_in/helper/size.dart';
import 'package:travel_in/widgets/buttons/blueButton.dart';
import 'package:travel_in/widgets/rating/rating_stars.dart';
import 'package:travel_in/widgets/rating/ratings.dart';
import 'package:travel_in/widgets/texts/custom_title.dart';
import 'package:travel_in/widgets/texts/label.dart';

class FilterDialog extends StatefulWidget {
  const FilterDialog({super.key});

  @override
  State<FilterDialog> createState() => _FilterDialogState();
}

class _FilterDialogState extends State<FilterDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(
        topLeft: Radius.circular(24),
        topRight: Radius.circular(24),
        bottomLeft: Radius.circular(0),
        bottomRight: Radius.circular(0),
      )),
            elevation: 15,
      shadowColor: Colors.black,
      insetPadding: EdgeInsets.symmetric(horizontal: 0),
      child: SingleChildScrollView(
        child: Container(
           height: getSize(context).height*0.8,
           width: getSize(context).width,
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
       
            ],
          ),
        ),
      ),
    );
  }
}
