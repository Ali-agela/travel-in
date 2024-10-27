import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_in/provider/resorts_provider.dart';
import 'package:travel_in/widgets/card/resort_offer_card.dart';
import 'package:travel_in/widgets/images/top_image.dart';
import 'package:travel_in/widgets/scrolls/scroll_view_h.dart';
import 'package:travel_in/widgets/texts/label.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {

  @override
  Widget build(BuildContext context) {
    return Consumer<ResortsProvider>(
      builder: (context, resortsConsumer, child) {
        return Scaffold(
            backgroundColor: Colors.white,
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TopImage(),
                ScrollViewH(
                  title: "الأعلى تقييماً",
                  resorts: resortsConsumer.resorts,
                ),
                ScrollViewH(
                  title: "مضافة حديثاً",
                 resorts: resortsConsumer.resorts,
                ),
                Label(
                  title: "أفضل العروض",
                ),
                Expanded(
                  child: ListView.builder(
                      padding: EdgeInsets.all(10),
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return ResortOfferCard();
                      }),
                ),
              ],
            ));
      }
    );
  }
}
