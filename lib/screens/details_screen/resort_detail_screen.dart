import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_in/helper/size.dart';
import 'package:travel_in/models/ResortModel.dart' as resort_model;
import 'package:travel_in/provider/resorts_offer_provider.dart';
import 'package:travel_in/provider/resorts_provider.dart';
import 'package:travel_in/widgets/card/resort_offer_card.dart';
import 'package:travel_in/widgets/card/sliver_card.dart';
import 'package:travel_in/widgets/dividers/long_blue_divider.dart';
import 'package:travel_in/widgets/rating/ratings.dart';
import 'package:travel_in/widgets/texts/label.dart';
import 'package:travel_in/widgets/texts/text_with_icon.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class ResortDetailScreen extends StatefulWidget {
  const ResortDetailScreen({super.key, required this.resort});
  final resort_model. ResortModel resort;
  @override
  State<ResortDetailScreen> createState() => _ResortDetailScreenState();
}

class _ResortDetailScreenState extends State<ResortDetailScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Provider.of<ResortsOfferProvider>(context, listen: false)
        .getOffers(widget.resort.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer2<ResortsProvider, ResortsOfferProvider>(
        builder: (context, resortsConsumer, offerConsumer, _) {
      return Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: [
            SliverCard(images: widget.resort.images),
            SliverList(
              delegate: SliverChildListDelegate([
                Center(
                  heightFactor: 6,
                  child: Container(
                    width: getSize(context).width * (40 / 400),
                    height: 5,
                    decoration: ShapeDecoration(
                      color: Color(0xFFD6D6D6),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Label(
                        title: widget.resort.name,
                      ),
                      Row(
                        children: [
                          TextWithIcon(
                              padding: 3,
                              text: widget.resort.location,
                              icon: Image.asset("assets/icons/loaction2.png")),
                          const Spacer(),
                          const Column(children: [
                            Ratings(rate: 5),
                            Text("4.8(15مراجعة)"),
                          ])
                        ],
                      ),
                      widget.resort.forFamilies == 1
                          ? TextWithIcon(
                              padding: 3,
                              icon: Image.asset("assets/icons/family.png"),
                              text: "عائلي",
                            )
                          : const SizedBox(),
                      TextWithIcon(
                        padding: 3,
                        icon: Image.asset("assets/icons/build.png"),
                        text: "مكاتب الحجز",
                      ),
                      TextWithIcon(
                        padding: 3,
                        icon: Image.asset("assets/icons/phone2.png"),
                        text: widget.resort.phone,
                      ),
                      const LongBlueDivider(),
                      const SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          widget.resort.description,
                        ),
                      ),
                      const SizedBox(height: 20),
                      const LongBlueDivider(),
                      Label(
                        title: AppLocalizations.of(context)!.bookingoffers,
                      ),
                      ListView.builder(
                          shrinkWrap: true,
                          padding: const EdgeInsets.only(top: 10, bottom: 10),
                          itemCount: offerConsumer.offers.length,
                          itemBuilder: (contex, index) {
                            return Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 5),
                              child: ResortOfferCard(
                                resortOfferModel: offerConsumer.offers[index],
                              ),
                            );
                          })
                    ],
                  ),
                )
              ]),
            ),
          ],
        ),
      );
    });
  }
}
