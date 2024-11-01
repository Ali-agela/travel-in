import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_in/models/reservation_model.dart';

import 'package:travel_in/provider/reservation_provider.dart';

import 'package:travel_in/widgets/buttons/blueButton.dart';
import 'package:travel_in/widgets/buttons/counter_button.dart';
import 'package:travel_in/widgets/dialogs/payment_dialoag.dart';
import 'package:travel_in/widgets/texts/label.dart';

class BookingInfo extends StatefulWidget {
  BookingInfo({super.key, required this.reservationModel});
  ReservationModel reservationModel;
  @override
  State<BookingInfo> createState() => _BookingInfoState();
}

class _BookingInfoState extends State<BookingInfo> {
  bool isFamily = true;
  int kids = 0;
  int adults = 0;

  @override
  Widget build(BuildContext context) {
    return Consumer<ReservationProvider>(
        builder: (context, reservationConsumer, child) {
      return Dialog(
        elevation: 15,
        shadowColor: Colors.black,
        insetPadding: EdgeInsets.symmetric(horizontal: 0),
        child: Container(
          //height: getSize(context).height * 0.5,
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(Icons.close),
                  ),
                  const Expanded(
                    child: Center(
                      child: Label(
                        title: " عملية الحجز",
                      ),
                    ),
                  ),
                ],
              ),
              const Text(
                  'يرجى تحديد عدد الأشخاص والأطفال (تحت عمر الثانية عشر)'),
              const SizedBox(height: 20),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xffF2F4F5),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isFamily = true;
                          });
                        },
                        child: Container(
                          decoration: isFamily
                              ? BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 7,
                                      offset: const Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
                                  color: Color(0xff6FCCCC).withOpacity(0.40),
                                  borderRadius: BorderRadius.circular(12),
                                )
                              : null,
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 50.0, vertical: 4),
                            child: Text(
                              "عائلة",
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isFamily = false;
                            kids = 0;
                          });
                        },
                        child: Container(
                          decoration: !isFamily
                              ? BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 7,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
                                  color: Color(0xff6FCCCC).withOpacity(0.40),
                                  borderRadius: BorderRadius.circular(12),
                                )
                              : null,
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 50.0, vertical: 4),
                            child: Text(
                              "شباب",
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              CounterButton(
                title: 'عدد الافراد',
                onPressed_add: () {
                  setState(() {});
                  adults++;
                },
                onPressed_take: () {
                  setState(() {
                    if (adults > 0) {
                      adults--;
                    }
                  });
                },
                counter: adults,
              ),
              isFamily
                  ? CounterButton(
                      title: "عدد الأطفال",
                      onPressed_add: () {
                        setState(() {});
                        kids++;
                      },
                      onPressed_take: () {
                        setState(() {
                          if (kids > 0) {
                            kids--;
                          }
                        });
                      },
                      counter: kids,
                    )
                  : const SizedBox(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50.0, vertical: 20),
                child: BlueButton(
                    onTap: () {
                      widget.reservationModel.adults = adults;
                      widget.reservationModel.kids = kids;
                      print(adults);
                      print(widget.reservationModel.kids = kids);
                      showDialog(
                          context: context,
                          builder: (context) => PaymentDialoag(
                              reservationModel: widget.reservationModel));
                    },
                    buttonText: "التالي"),
              ),
            ],
          ),
        ),
      );
    });
  }
}
