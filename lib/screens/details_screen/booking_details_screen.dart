import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_in/models/DetailedResevedResorsModel.dart';
import 'package:travel_in/provider/reservation_provider.dart';
import 'package:travel_in/widgets/buttons/back_button.dart';
import 'package:travel_in/widgets/buttons/blueButton.dart';
import 'package:travel_in/widgets/card/resort_offer_card.dart';
import 'package:travel_in/widgets/dividers/long_blue_divider.dart';
import 'package:travel_in/widgets/images/top_image.dart';
import 'package:travel_in/widgets/texts/center_app_title.dart';
import 'package:travel_in/widgets/texts/label.dart';
import 'package:travel_in/widgets/texts/spasification_text.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class BookingDetailsScreen extends StatefulWidget {
  const BookingDetailsScreen({super.key, required this.id});
    final int id;

  @override
  State<BookingDetailsScreen> createState() => _BookingDetailsScreenState();
}

class _BookingDetailsScreenState extends State<BookingDetailsScreen> {
      DetailedResevedResorsModel? detailedResevedResorsModel;

      @override
  void initState() {
    Provider.of<ReservationProvider>(context,listen: false).reservationdetails( widget.id).then((value) {
      if(value) {setState(() {
        detailedResevedResorsModel = Provider.of<ReservationProvider>(context,listen: false).detailedResevedResorsModel ;
      });}
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ReservationProvider>(
      builder: (context,reservationDeatilsConsumer,_) {
        return  reservationDeatilsConsumer.isLoading?Center(child: CircularProgressIndicator(),):
        
        SafeArea(
          child: Scaffold(
              backgroundColor: Colors.white,
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    Stack(children: [
                      TopImage(),
                      CenterAppTitle(
                          title: AppLocalizations.of(context)!.bookingdetails),
                      Padding(
                        padding:
                            const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            GestureDetector(
                                onTap: () {}, child: CustomBackButton()),
                          ],
                        ),
                      ),
                    ]),
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Label(title: "حجز لدى منتجع النخلة الذهبية"),
                          SizedBox(
                            height: 20,
                          ),
                          // ResortOfferCard(
        
                          // ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Label(
                                title: "التفاصيل",
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              SpasificationText(text: "تاريخ الدخول ", value: reservationDeatilsConsumer.detailedResevedResorsModel.startDate!.toIso8601String().substring(0,10)),
                              SpasificationText(text: "تاريخ الخروج", value: reservationDeatilsConsumer.detailedResevedResorsModel.endDate!.toIso8601String().substring(0,10)),
                              SpasificationText(text: "إجمالي القيمة ", value: reservationDeatilsConsumer.detailedResevedResorsModel.amount.toString()),
                              SpasificationText(text: "طريقة الدفع ", value: reservationDeatilsConsumer.detailedResevedResorsModel.method.toString()),
                              Label(title: "حالة الحجز"),
                              Center(
                                child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Icon(Icons.warning_amber_rounded),
                                        reservationDeatilsConsumer.detailedResevedResorsModel!.status=="pending"? Text("حجز غير مؤكد"): Text("حجز مؤكد"),
                                    ]),
                              ),
                              Center(
                                  child: reservationDeatilsConsumer.detailedResevedResorsModel!.status=="pending"?Text(
                                "نأمل منك تأكيد حجزك عبر مراجعة مكتب الحجز قبل تاريخ 2024/12/12",
                                textAlign: TextAlign.center,
                              ):SizedBox()
                              
                              ),
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
                                buttonText:
                                    AppLocalizations.of(context)!.editbooking,
                                filled: false,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              BlueButton(
                                onTap: () {},
                                buttonText:
                                    AppLocalizations.of(context)!.cancelbooking,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )),
        );
      }
    );
  }
}
