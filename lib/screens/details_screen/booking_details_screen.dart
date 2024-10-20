import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_in/widgets/buttons/blueButton.dart';
import 'package:travel_in/widgets/card/resort_offer_card.dart';
import 'package:travel_in/widgets/dividers/long_blue_divider.dart';
import 'package:travel_in/widgets/images/top_image.dart';
import 'package:travel_in/widgets/texts/label.dart';
import 'package:travel_in/widgets/texts/spasification_text.dart';

class BookingDetailsScreen extends StatefulWidget {
  const BookingDetailsScreen({super.key});

  @override
  State<BookingDetailsScreen> createState() => _BookingDetailsScreenState();
}

class _BookingDetailsScreenState extends State<BookingDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          TopImage(),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                Label(title: "حجز لدى منتجع النخلة الذهبية"),
                SizedBox(
                  height: 20,
                ),
                ResortOfferCard(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Label(
                      title: "التفاصيل",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SpasificationText(text: "عدد الايام ", value: "5"),
                    SpasificationText(text: "عدد الايام ", value: "5"),
                    SpasificationText(text: "عدد الايام ", value: "5"),
                    SpasificationText(text: "عدد الايام ", value: "5"),
                    Label(title: "حالة الحجز"),
                    Center(
                      child: Row(mainAxisSize: MainAxisSize.min, children: [
                        Icon(Icons.warning_amber_rounded),
                        Text("حجز غير مؤكد")
                      ]),
                    ),
                    Center(
                        child: Text(
                      "نأمل منك تأكيد حجزك عبر مراجعة مكتب الحجز قبل تاريخ 2024/12/12",
                      textAlign: TextAlign.center,
                    )),
                    Center(
                      child: Text("شروط الحجز"),
                    ),
                    Center(
                      child: Text("مكاتب الحجز"),
                    ),
                    Divider(),
                    SizedBox(
                      height: 20,
                    ),
                    BlueButton(
                      onTap: () {},
                      buttonText: "تعديل الحجز",
                      filled: false,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    BlueButton(
                      onTap: () {},
                      buttonText: "إلغاء الحجز",
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
