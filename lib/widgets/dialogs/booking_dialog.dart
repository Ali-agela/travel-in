import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_in/helper/size.dart';
import 'package:travel_in/widgets/buttons/blueButton.dart';
import 'package:travel_in/widgets/dialogs/date_dialog.dart';
import 'package:travel_in/widgets/texts/label.dart';

class BookingDialog extends StatelessWidget {
  const BookingDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.white,
      shadowColor: Colors.black,
      elevation: 0,
      insetPadding: EdgeInsets.symmetric(horizontal: 0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        height: getSize(context).height * 0.5,
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
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
                SizedBox(
                  width: getSize(context).width * 0.13,
                ),
                const Label(title: "شروط الحجز"),
              ],
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text(
                " قبل إتمام خطوات عملية الحجز نرجو منك الاطلاع على الشروط المرفقة وقراءتها بعناية والتأكيد على موافقتك. بالنقر على زر التأكيد فإنك تؤكد اطلاعك والتزامك بكافة الشروط، وفي حال مخالفتك لأي منها تتحمل المسؤولية الناتجة عن ذلك.",
                style: GoogleFonts.cairo(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: BlueButton(
                  onTap: () {}, buttonText: "شروط الحجز", filled: false),
            ),
            const SizedBox(height: 14),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: BlueButton(onTap: () {
                showDialog(
                    context: context, builder: (context) => DateDialog());
              }, buttonText: "تأكيد الحجز"),
            ),
          ],
        ),
      ),
    );
  }
}
