import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_in/helper/size.dart';
import 'package:travel_in/provider/resorts_provider.dart';
import 'package:travel_in/widgets/card/booked_card.dart';
import 'package:travel_in/widgets/card/resort_offer_card.dart';
import 'package:travel_in/widgets/images/top_image.dart';
import 'package:travel_in/widgets/scrolls/scroll_view_h.dart';
import 'package:travel_in/widgets/texts/text_with_icon.dart';

class BookingScreen extends StatefulWidget {
  @override
  _BookingScreenState createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  bool thereIsData = true;
  bool thereIsFav = true;
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Consumer<ResortsProvider>(
      builder: (context,resortsConsumer,child) {
        return Scaffold(
          backgroundColor: Colors.white,
          // appBar: AppBar(
          //   backgroundColor: Colors.transparent,
          //   title: Text("الحجوزات "),
          //   centerTitle: true,
          //   leading: Container(
          //     decoration: BoxDecoration(
          //       color: Colors.white,
          //       shape: BoxShape.circle,
          //     ),
          //     padding: EdgeInsets.all(10),
          //     child: Icon(Icons.notifications),
          //   ),
          // ),
          body: Stack(
            children: [
              TopImage(),
              DefaultTabController(
                initialIndex: 0,
                length: 2,
                child: Column(children: [
                  SizedBox(
                    height: getSize(context).height * 0.15,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: Color(0xffF2F4F5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 0, vertical: 8),
                    child: TabBar(
                        dividerColor: Colors.transparent,
                        indicatorColor: Colors.transparent,
                        onTap: (tabIndex) {
                          setState(() {
                            index = tabIndex;
                          });
                        },
                        tabs: [
                          Tab(
                            child: Container(
                              width: getSize(context).width * 0.5,
                              decoration: index == 0
                                  ? BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white,
                                    )
                                  : null,
                              child: Center(
                                child: Text(
                                  "حجوزات قادمة",
                                  style: TextStyle(
                                      color:
                                          index == 0 ? Colors.black : Colors.grey),
                                ),
                              ),
                            ),
                          ),
                          Tab(
                              child: Container(
                            width: getSize(context).width * 0.5,
                            decoration: index == 1
                                ? BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  )
                                : null,
                            child: Center(
                              child: Text(
                                "المفضلة",
                                style: TextStyle(
                                    color: index == 1 ? Colors.black : Colors.grey),
                              ),
                            ),
                          )),
                        ]),
                  ),
                  Expanded(
                    child: TabBarView(children: [
                      thereIsData
                          ? ListView.builder(
                              itemCount: 5,
                              itemBuilder: (context, index) {
                                return BookedCard();
                              })
                          : Center(
                              child: Text(
                                "لا يوجد حجوزات",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                      thereIsFav
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                  ScrollViewH(
                                      resorts: resortsConsumer.resorts,
                                      title: "الأماكن والرحلات المفضلة"),
                                  SizedBox(height: getSize(context).height * 0.02),
                                  Text("العروض التي سجلت إعجابك بها"),
                                  Expanded(
                                    child: ListView.builder(
                                        padding: EdgeInsets.all(10),
                                        itemCount: 5,
                                        itemBuilder: (context, index) {
                                          return ResortOfferCard();
                                        }),
                                  ),
                                ])
                          : Center(
                              child: Text(
                                "لا يوجد حجوزات",
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                    ]),
                  ),
                ]),
              )
            ],
          ),
        );
      }
    );
  }
}
