import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:travel_in/helper/constant.dart';
import 'package:travel_in/helper/size.dart';
import 'package:travel_in/widgets/buttons/blueButton.dart';
import 'package:travel_in/widgets/buttons/whiteButton.dart';

class ExploreImageScroller extends StatefulWidget {
  const ExploreImageScroller({super.key});

  @override
  State<ExploreImageScroller> createState() => _ExploreImageScrollerState();
}

class _ExploreImageScrollerState extends State<ExploreImageScroller> {
  final myitems = [
    Image.asset(
      'assets/explore/1.png', fit: BoxFit.cover, ),
    Image.asset('assets/explore/2.png', fit: BoxFit.cover),
    Image.asset('assets/explore/3.png', fit: BoxFit.cover),

  ];
  int currentIndex = 0;
  bool isShowMore = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Container(
          width: getSize(context).width,
          height: getSize(context).height,
          child: Stack(children: [
            CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                autoPlayCurve: Curves.fastOutSlowIn,
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayInterval: const Duration(seconds: 2),
                enlargeCenterPage: true,
                viewportFraction: 1.0,
                height: getSize(context).height,
                aspectRatio: 19 / 6,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                },
              ),
              items: myitems,
            ),
            Container(
                height: 100,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.black87, Colors.transparent],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
            ),
          Container(
                  height: getSize(context).height,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.black87, Colors.transparent],
                        begin: Alignment.bottomCenter,
                        end: Alignment.center)),
              ),

            Positioned(
              bottom: getSize(context).height * 0.1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  width: getSize(context).width*0.9,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("المغامرة تنتظرك",
                        style: GoogleFonts.cairo(
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        " حينما يصبح المشهد كاملاً من الجبال العملاقة، اعلم أنك داخل أودية اكاكوس الساحرة ... معلم الخريطة، والمعروفة باللغة التارقية بـ “اينلجي”، هي أحد أشهر معالم أكاكوس وأكثرها تميزاً . يأخذ هذا المعلم شكلاً يشبه قارة إفريقيا، ليصبح رمزًا يجمع بين الجغرافيا والتراث الثقافي العريق للطوارق. " ,
                        style: GoogleFonts.cairo(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                        ),
                        maxLines: isShowMore ? 50 : 1,
                          textAlign: TextAlign.justify,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isShowMore = !isShowMore;
                          });
                        },
                        child: Text(
                          isShowMore ? " .. أقل" : ".. المزيد",
                          style: TextStyle(
                            fontSize: 16,
                            color: white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
                left: 24,
                bottom: 16,
                child: whiteButton(
                  onTap: () {},
                  buttonText: 'اكتشف المزيد',
                  width: 188,
                )),

            
          ]),
        ),
      ),
    );
  }
}
