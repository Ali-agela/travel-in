import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_in/helper/constant.dart';
import 'package:travel_in/helper/size.dart';
import 'package:travel_in/widgets/card/home_card.dart';
import 'package:travel_in/widgets/images/swiper_image.dart';
import 'package:travel_in/widgets/rating/rating_stars.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: MediaQuery.of(context).size.height / 2,
            pinned: true, // This makes the app bar stick
            flexibleSpace: FlexibleSpaceBar(
                background: Swiper.children(
                    autoplay: true,
                    loop: true,
                    autoplayDelay: 7000,
                    children: [
                  SwiperImage(
                    index: 1,
                    image: "assets/pics/1.png",
                  ),
                  SwiperImage(
                    index: 2,
                    image: "assets/pics/2.png",
                  ),
                  SwiperImage(
                    index: 3,
                    image: "assets/pics/3.png",
                  ),
                ])),
          ),
          SliverList(
              delegate: SliverChildListDelegate(
            [
              Container(
                width: double.infinity,
                height: 5,
                decoration: ShapeDecoration(
                  color: Color(0xFFD6D6D6),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "المنتجعات",
                    style: GoogleFonts.cairo(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    height: getSize(context).height * (128 / 852),
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: SizedBox(
                                width: getSize(context).width * 0.5,
                                child: HomeCard()),
                          );
                        }),
                  ),
                  Text(
                    "المنتجعات",
                    style: GoogleFonts.cairo(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    height: getSize(context).height * (128 / 852),
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: SizedBox(
                                width: getSize(context).width * 0.5,
                                child: HomeCard()),
                          );
                        }),
                  ),
                  Text(
                    "المنتجعات",
                    style: GoogleFonts.cairo(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    height: getSize(context).height * (128 / 852),
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: SizedBox(
                                width: getSize(context).width * 0.5,
                                child: HomeCard()),
                          );
                        }),
                  ),
                ],
              )
            ],
          )),
        ],
      ),
    );
  }
}
