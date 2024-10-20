import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_in/widgets/buttons/blueButton.dart';
import 'package:travel_in/widgets/buttons/counter_button.dart';
import 'package:travel_in/widgets/card/sliver_card.dart';
import 'package:travel_in/widgets/dialogs/booking_dialog.dart';
import 'package:travel_in/widgets/dialogs/booking_info.dart';
import 'package:travel_in/widgets/dialogs/confirmation_dialog.dart';
import 'package:travel_in/widgets/dialogs/date_dialog.dart';
import 'package:travel_in/widgets/dialogs/payment_dialoag.dart';
import 'package:travel_in/widgets/dialogs/succes_dialog.dart';
import 'package:travel_in/widgets/dividers/long_blue_divider.dart';
import 'package:travel_in/widgets/dividers/scroll_divider.dart';
import 'package:travel_in/widgets/rating/ratings.dart';
import 'package:travel_in/widgets/texts/label.dart';
import 'package:travel_in/widgets/texts/text_with_icon.dart';

class OfferDetailScreen extends StatefulWidget {
  const OfferDetailScreen({super.key});

  @override
  State<OfferDetailScreen> createState() => _OfferDetailScreenState();
}

class _OfferDetailScreenState extends State<OfferDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverCard(),
          SliverList(
            delegate: SliverChildListDelegate([
              ScrollDivider(),
              Padding(
                padding:
                    const EdgeInsets.only(right: 14.0, left: 14, bottom: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Label(
                          title: "فيلا",
                        ),
                        Spacer(),
                        Column(children: [
                          Ratings(rate: 3),
                          Text("4.8(15مراجعة)"),
                        ])
                      ],
                    ),
                    TextWithIcon(
                      icon: "assets/icons/build.png",
                      text: "مكاتب الحجز",
                    ),
                    TextWithIcon(
                      icon: "assets/icons/phone2.png",
                      text: "0915544666 / 0925544666",
                    ),
                    LongBlueDivider(),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          TextWithIcon(
                              icon: "assets/icons/room.png",
                              text: "4 غرف",
                              space: 10,
                              backGroundColor:
                                  Color(0xff6FCCCC).withOpacity(0.25)),
                          TextWithIcon(
                              icon: "assets/icons/person2.png",
                              text: "8 اشخاص",
                              space: 10,
                              backGroundColor:
                                  Color(0xff6FCCCC).withOpacity(0.25)),
                          TextWithIcon(
                              icon: "assets/icons/money.png",
                              text: "800 د.ل\n /اليوم ",
                              space: 10,
                              backGroundColor:
                                  Color(0xff6FCCCC).withOpacity(0.25)),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    LongBlueDivider(),
                    SizedBox(height: 10),
                    const Label(
                      title: "المواصفات والخدمات ",
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 45),
                      child: GridView.builder(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  mainAxisExtent: 30,
                                  crossAxisSpacing: 10),
                          itemCount: 7,
                          itemBuilder: (context, index) {
                            return TextWithIcon(
                              text: "حوض السباحة",
                              icon: "assets/icons/check.png",
                              padding: 0,
                            );
                          }),
                    ),
                    LongBlueDivider(),
                    SizedBox(height: 50),
                    Center(
                      child: BlueButton(
                        onTap: () {
                          showDialog(
                              barrierColor: Colors.white.withOpacity(0.2),
                              context: context,
                              builder: (context) {
                                return SuccesDialog();
                              });
                        },
                        buttonText: "احجز الان",
                      ),
                    ),
                  ],
                ),
              )
            ]),
          ),
        ],
      ),
    );
  }
}
