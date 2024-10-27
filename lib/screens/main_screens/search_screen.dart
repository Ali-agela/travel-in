import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_in/widgets/buttons/back_button.dart';
import 'package:travel_in/widgets/card/resort_offer_card.dart';
import 'package:travel_in/widgets/images/top_image.dart';
import 'package:travel_in/widgets/scrolls/scroll_view_h.dart';
import 'package:travel_in/widgets/texts/center_app_title.dart';
import 'package:travel_in/widgets/texts/label.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<String> resorts = ['resort1.png', 'resort2.png', 'resort3.png'];
  List<String> trips = ['trip1.png', 'trip2.png', 'trip3.png'];
  List<String> soon = ['soon1.png', 'soon2.png', 'soon3.png'];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(children:[
                               TopImage(),
      
                CenterAppTitle(title: "البحث"),
                                        Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [ 
                              GestureDetector(
                                onTap: (){
                                },
                                child: CustomBackButton()
                              ),
                              ],
                            ),
                          ),
      
                 ]),
              ScrollViewH(
                title: "الأعلى تقييماً",
                images: resorts,
              ),
              ScrollViewH(
                title: "مضافة حديثاً",
                images: trips,
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
          )),
    );
  }
}
