import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_in/helper/size.dart';
import 'package:travel_in/models/ResortModel.dart';
import 'package:travel_in/provider/resorts_provider.dart';
import 'package:travel_in/widgets/card/resort_offer_card.dart';
import 'package:travel_in/widgets/card/sliver_card.dart';
import 'package:travel_in/widgets/dividers/long_blue_divider.dart';
import 'package:travel_in/widgets/rating/ratings.dart';
import 'package:travel_in/widgets/texts/label.dart';
import 'package:travel_in/widgets/texts/text_with_icon.dart';

class ResortDetailScreen extends StatefulWidget {
  const ResortDetailScreen({super.key, required this.resort});
  final ResortModel resort;
  @override
  State<ResortDetailScreen> createState() => _ResortDetailScreenState();
}

class _ResortDetailScreenState extends State<ResortDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ResortsProvider>(
      builder: (context,resortsConsumer,_) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: CustomScrollView(
            slivers: [
              SliverCard( images: widget.resort.images),
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
                                icon: "assets/icons/loaction2.png"),
                            const Spacer(),
                            const Column(children: [
                              Ratings(rate: 5),
                              Text("4.8(15مراجعة)"),
                            ])
                          ],
                        ),
                        widget.resort.forFamilies==1 ? const TextWithIcon(
                          padding: 3,
                          icon: "assets/icons/family.png",
                          text: "عائلي",
                        ): const SizedBox()
                        ,
                        const TextWithIcon(
                          padding: 3,
                          icon: "assets/icons/build.png",
                          text: "مكاتب الحجز",
                        ),
                        TextWithIcon(
                          padding: 3,
                          icon: "assets/icons/phone2.png",
                          text: widget.resort.phone,
                        ),
                        const LongBlueDivider(),
                        const SizedBox(height: 20),
                        Padding(
                          padding:  const EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                              widget.resort.description,
                              ),
                        ),
                        const SizedBox(height: 20),
                        const LongBlueDivider(),
                        const Label(
                          title: "عروض الحجز",
                        ),
                        ListView.builder(
                            shrinkWrap: true,
                            padding: const EdgeInsets.only(top: 10, bottom: 10),
                            itemCount: 3,
                            itemBuilder: (contex, index) {
                              return  Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10.0, vertical: 5),
                                child: ResortOfferCard(
                                  
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
      }
    );
  }
}
