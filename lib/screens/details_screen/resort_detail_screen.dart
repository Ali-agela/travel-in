import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_in/helper/size.dart';
import 'package:travel_in/widgets/card/resort_offer_card.dart';
import 'package:travel_in/widgets/card/sliver_card.dart';
import 'package:travel_in/widgets/dividers/long_blue_divider.dart';
import 'package:travel_in/widgets/rating/ratings.dart';
import 'package:travel_in/widgets/texts/label.dart';
import 'package:travel_in/widgets/texts/text_with_icon.dart';

class ResortDetailScreen extends StatefulWidget {
  const ResortDetailScreen({super.key});

  @override
  State<ResortDetailScreen> createState() => _ResortDetailScreenState();
}

class _ResortDetailScreenState extends State<ResortDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverCard(),
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
                    const Label(
                      title: "منتجع النخلة الذهبية",
                    ),
                    const Row(
                      children: [
                        TextWithIcon(
                            padding: 3,
                            text: "بنغازي - قاريونس",
                            icon: "assets/icons/loaction2.png"),
                        Spacer(),
                        Column(children: [
                          Ratings(rate: 5),
                          Text("4.8(15مراجعة)"),
                        ])
                      ],
                    ),
                    const TextWithIcon(
                      padding: 3,
                      icon: "assets/icons/family.png",
                      text: "عائلي",
                    ),
                    const TextWithIcon(
                      padding: 3,
                      icon: "assets/icons/build.png",
                      text: "مكاتب الحجز",
                    ),
                    const TextWithIcon(
                      padding: 3,
                      icon: "assets/icons/phone2.png",
                      text: "0915544666 / 0925544666",
                    ),
                    const LongBlueDivider(),
                    const SizedBox(height: 20),
                    const Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                          "المنتجع يشمل مرافق ترفيهية وخدمية و هي مجموعة من المقاهي والمطاعم مختلفة التخصصات وصالة العاب مغلقة والعاب خارجية والعاب مائية وجلسات عائلية خاصة VIP "),
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
                          return const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 5),
                            child: ResortOfferCard(),
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
}
