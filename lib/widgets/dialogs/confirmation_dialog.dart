import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_in/helper/size.dart';
import 'package:travel_in/models/reservation_model.dart';
import 'package:travel_in/provider/reservation_provider.dart';
import 'package:travel_in/widgets/buttons/blueButton.dart';
import 'package:travel_in/widgets/dialogs/succes_dialog.dart';
import 'package:travel_in/widgets/texts/label.dart';

class ConfirmationDialog extends StatelessWidget {
  ConfirmationDialog({super.key, required this.reservationModel});
  ReservationModel reservationModel;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 15,
      shadowColor: Colors.black,
      insetPadding: EdgeInsets.symmetric(horizontal: 0),
      child: Container(
        height: getSize(context).height * 0.6,
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Label(
              title: "تأكيد",
              subTitle:
                  "نأمل منك مراجعة مكتب الحجز في مدة أقصاها 10 أيام قبل الموعد",
            ),
            const SizedBox(height: 20),
            BlueButton(
              onTap: () {},
              buttonText: "تفاصيل مكتب الحجز ",
              filled: false,
            ),
            const SizedBox(height: 14),
            BlueButton(
                onTap: () {
                  print(reservationModel.method);
                  Provider.of<ReservationProvider>(context, listen: false)
                      .reserve(reservationModel)
                      .then((value) {
                    if (value) {
                      showDialog(
                          context: context,
                          builder: (context) => SuccesDialog());
                    }
                  });
                },
                buttonText: "تأكيد الحجز"),
            const SizedBox(height: 14),
            BlueButton(
                onTap: () {
                  Navigator.of(context).pop();
                },
                buttonText: "إلغاء العملية"),
          ],
        ),
      ),
    );
  }
}
