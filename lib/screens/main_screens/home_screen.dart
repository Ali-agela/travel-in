import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_in/helper/size.dart';
import 'package:travel_in/widgets/card/sliver_card.dart';
import 'package:travel_in/widgets/dividers/scroll_divider.dart';
import 'package:travel_in/widgets/scrolls/scroll_view_h.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> resorts = ['resort1.png', 'resort2.png', 'resort3.png'];
  List<String> trips = ['trip1.png', 'trip2.png', 'trip3.png'];
  List<String> soon = ['soon1.png', 'soon2.png', 'soon3.png'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverCard(
            children: [
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.transparent, Colors.black.withOpacity(0.4)],
                    begin: Alignment.center,
                    end: const Alignment(0, 1),
                  ),
                ),
              ),
              Positioned(
                bottom: 36,
                right: 16,
                left: 16,
                child: Column(
                  children: [
                    Text.rich(
                      TextSpan(
                        text: " ابدأ التخطيط لرحلتك القادمة مع",
                        style: GoogleFonts.cairo(
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                        ),
                        children: [
                          TextSpan(
                            text: "Travelin",
                            style: GoogleFonts.cairo(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                        "اختر من بين مجموعة واسعة من المنتجعات والمصائف المميزة في ليبيا واستمتع بتجربة  لا تنسى",
                        style: GoogleFonts.cairo(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                        )),
                  ],
                ),
              )
            ],
          ),
          SliverList(
              delegate: SliverChildListDelegate(
            [
              ScrollDivider(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 9),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ScrollViewH(
                      images: resorts,
                      title: "منتجعات",
                    ),
                    SizedBox(height: getSize(context).height * 0.02),
                    ScrollViewH(
                      images: trips,
                      title: "رحلات",
                    ),
                    SizedBox(height: getSize(context).height * 0.02),
                    ScrollViewH(images: soon, title: "عروض (قريبا)"),
                    SizedBox(height: getSize(context).height * 0.1),
                  ],
                ),
              )
            ],
          )),
        ],
      ),
    );
  }
}
