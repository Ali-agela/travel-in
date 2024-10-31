import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:travel_in/helper/constant.dart';
import 'package:travel_in/helper/size.dart';
import 'package:travel_in/provider/dark_mode_provider.dart';
import 'package:travel_in/provider/reservation_provider.dart';
import 'package:travel_in/provider/resorts_provider.dart';
import 'package:travel_in/widgets/buttons/back_button.dart';
import 'package:travel_in/widgets/card/booked_card.dart';
import 'package:travel_in/widgets/card/resort_offer_card.dart';
import 'package:travel_in/widgets/images/top_image.dart';
import 'package:travel_in/widgets/scrolls/scroll_view_h.dart';
import 'package:travel_in/widgets/texts/center_app_title.dart';
import 'package:travel_in/widgets/texts/text_with_icon.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class BookingScreen extends StatefulWidget {
  @override
  _BookingScreenState createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  bool thereIsData = true;
  bool thereIsFav = true;
  int index = 0;

  @override
  void initState() {
    Provider.of<ReservationProvider>(context, listen: false)
        .fetchReservations();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer2<ResortsProvider, ReservationProvider>(
        builder: (context, resortsConsumer, reservationConsumer, child) {
      return Consumer<DarkModeProvider>(
        builder: (context, darkModeConsumer, _) {
          return Scaffold(
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
            body: SafeArea(
              child: Stack(
                children: [
                  TopImage(),
                  CenterAppTitle(title: AppLocalizations.of(context)!.bookings),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GestureDetector(onTap: () {}, child: CustomBackButton()),
                      ],
                    ),
                  ),
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
                          color:darkModeConsumer.isDark ? greycolor : Color(0xffF2F4F5),
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
                                          color: darkModeConsumer.isDark 
                                          ? lightgrey
                                          : white,
                                        )
                                      : null,
                                  child: Center(
                                    child: Text(
                                     AppLocalizations.of(context)!.nextbook,
                                      style: TextStyle(
                                          color: index == 0
                                              ? Colors.black
                                              : Colors.grey),
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
                                    AppLocalizations.of(context)!.favorites,
                                    style: TextStyle(
                                        color: index == 1
                                            ? Colors.black
                                            : Colors.grey),
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
                                    return BookedCard(
                                      resevedResorsModel:
                                          reservationConsumer.reservations[index],
                                    );
                                  })
                              : Center(
                                  child: Text(
                                    AppLocalizations.of(context)!.nodata,
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                          thereIsFav
                              ? Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                      ScrollViewH(
                                          resorts: resortsConsumer.resorts,
                                          title: AppLocalizations.of(context)!.favoriteplaces),
                                      SizedBox(
                                          height: getSize(context).height * 0.02),
                                      Text(AppLocalizations.of(context)!.likedoffers,
                                       style: GoogleFonts.cairo(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      color: darkModeConsumer.isDark 
                                      ? white
                                      : Colors.black
                                    ),
),
                                      // Expanded(
                                      //   child: ListView.builder(
                                      //       padding: EdgeInsets.all(10),
                                      //       itemCount: 5,
                                      //       itemBuilder: (context, index) {
                                      //         return ResortOfferCard();
                                      //       }),
                                      // ),
                                    ])
                              : Center(
                                  child: Text(
                                    AppLocalizations.of(context)!.nodata,

                                  ),
                                ),
                        ]),
                      ),
                    ]),
                  )
                ],
              ),
            ),
          );
        }
      );
    });
  }
}
