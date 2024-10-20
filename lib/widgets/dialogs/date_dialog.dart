import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_in/helper/size.dart';
import 'package:travel_in/widgets/buttons/blueButton.dart';
import 'package:travel_in/widgets/texts/label.dart';

class DateDialog extends StatelessWidget {
  const DateDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.symmetric(horizontal: 0),
      child: Container(
          child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.close),
              ),
              // SizedBox(
              //   width: getSize(context).width * 0.13,
              // ),
              const Label(
                title: " عملية الحجز",
                subTitle: "برجاء تحديد الأيام التي ترغب بالحجز بها",
              ),
            ],
          ),
          //SizedBox(height: 20),
          DatePickerDialog(
            
            firstDate: DateTime.now(),
            lastDate: DateTime(2025),
            initialDate: DateTime.now(),
          ),
          BlueButton(onTap: () {}, buttonText: "التالي"),
          SizedBox(height: 14),
        ],
      )),
    );
  }
}
