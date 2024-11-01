import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_date_range_picker/flutter_date_range_picker.dart'
    as DateRangePicker;
import 'package:provider/provider.dart';
import 'package:travel_in/models/reservation_model.dart';
import 'package:travel_in/provider/reservation_provider.dart';
import 'package:travel_in/widgets/buttons/blueButton.dart';
import 'package:travel_in/widgets/dialogs/booking_info.dart';
import 'package:travel_in/widgets/texts/label.dart';

class DateDialog extends StatelessWidget {
  DateDialog({super.key,required this.reservationModel});
  String? startDate;
  String? endDate;
  ReservationModel reservationModel;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.symmetric(horizontal: 0),
      child: Container(
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
          SizedBox(
              height: 500,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DateRangePicker.DateRangePickerWidget(
                  onDateRangeChanged: (value) {
                    startDate = value!.start.toIso8601String().substring(0, 10);
                    endDate = value.end.toIso8601String().substring(0, 10);
                    print(startDate);
                    print(endDate);
                  },
                ),
              )),

          BlueButton(
              onTap: () {
                if (startDate != null && endDate != null) {
                  reservationModel.startDate= DateTime.parse(startDate!);
                   reservationModel.endDate= DateTime.parse(endDate!);
                  showDialog(
                      context: context, builder: (context) => BookingInfo(reservationModel: reservationModel));
                }
              },
              buttonText: "التالي"),
          SizedBox(height: 14),
        ],
      )),
    );
  }
}
