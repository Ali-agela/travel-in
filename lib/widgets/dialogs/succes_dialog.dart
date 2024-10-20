import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_in/helper/size.dart';
import 'package:travel_in/widgets/buttons/blueButton.dart';
import 'package:travel_in/widgets/images/logo_image.dart';
import 'package:travel_in/widgets/texts/label.dart';

class SuccesDialog extends StatelessWidget {
  const SuccesDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 15,
      shadowColor: Colors.black,
      insetPadding: EdgeInsets.symmetric(horizontal: 0),
      child: Container(
        height: getSize(context).height * 0.5,
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Label(title: "تم الحجز بنجاح "),
                Icon(
                  Icons.check_circle,
                  color: Colors.green,
                )
              ],
            ),
            const SizedBox(height: 20),
            LogoImage(),
            Text("شكراً لاختيارك Travel in"),
            const SizedBox(height: 20),
            BlueButton(onTap: (){}, buttonText: "الخروج")
          ],
        ),
      ),
    );
  }
}
