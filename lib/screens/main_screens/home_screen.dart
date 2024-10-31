import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';
import 'package:travel_in/helper/constant.dart';
import 'package:travel_in/helper/size.dart';
import 'package:travel_in/provider/dark_mode_provider.dart';
import 'package:travel_in/provider/resorts_provider.dart';
import 'package:travel_in/widgets/card/sliver_card.dart';
import 'package:travel_in/widgets/dividers/scroll_divider.dart';
import 'package:travel_in/widgets/scrolls/scroll_view_h.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  initState() {
    Provider.of<ResortsProvider>(context, listen: false).getResorts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer2<ResortsProvider, DarkModeProvider>(
        builder: (context, resortsConsumer, darkModeConsumer, child) {
      return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Provider.of<ResortsProvider>(context, listen: false).getResorts();
          },
          child: Icon(Icons.search),
        ),
        body: CustomScrollView(
          slivers: [
            resortsConsumer.isLoading
                ? SliverToBoxAdapter(
                    child: Container(
                      height: 300,
                      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      decoration: BoxDecoration(
                        color: darkModeConsumer.isDark ?darktxtcolor : Colors.grey[300],
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: Shimmer.fromColors(
                              baseColor: darkModeConsumer.isDark ?darktxtcolor : Colors.grey[300]!,
                              highlightColor: Colors.grey[100]!,
                              child: Container(
                                color: darkModeConsumer.isDark ?Colors.black12 : Colors.grey[300],
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 36,
                            right: 16,
                            left: 16,
                            child: Column(
                              children: [
                                Container(
                                  width: double.infinity,
                                  height: 24,
                                  color: darkModeConsumer.isDark ?Colors.black12 : Colors.grey[300],
                                ),
                                SizedBox(height: 10),
                                Container(
                                  width: double.infinity,
                                  height: 14,
                                  color: darkModeConsumer.isDark ?Colors.black12 : Colors.grey[300],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                : SliverCard(
                    images: resortsConsumer.resorts[0].images,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.transparent,
                              Colors.black.withOpacity(0.4)
                            ],
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
                                text: AppLocalizations.of(context)!.planyournexttripwithtravelin,
                                style: GoogleFonts.cairo(
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                ),
                                children: [
                                  TextSpan(
                                    text: AppLocalizations.of(context)!.travelin,
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
                                AppLocalizations.of(context)!.choosefromawiderangeofresortsanddestinationsinlibya,
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
                      resortsConsumer.isLoading
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: List.generate(3, (index) {
                                return Container(
                                  width: 100,
                                  height: 100,
                                  margin: EdgeInsets.symmetric(horizontal: 4),
                                  decoration: BoxDecoration(
                                    color: darkModeConsumer.isDark ?darktxtcolor : Colors.grey[300],
                                    borderRadius: BorderRadius.circular(24),
                                  ),
                                  child: Shimmer.fromColors(
                                    baseColor: darkModeConsumer.isDark ?darktxtcolor : Colors.grey[300]!,
                                    highlightColor: Colors.grey[100]!,
                                    child: Container(
                                      color: darkModeConsumer.isDark ?darktxtcolor : Colors.grey[300],
                                    ),
                                  ),
                                );
                              }),
                            )
                          : ScrollViewH(
                              resorts: resortsConsumer.resorts,
                              title: AppLocalizations.of(context)!.resorts,
                            ),
                      SizedBox(height: getSize(context).height * 0.02),
                      resortsConsumer.isLoading
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: List.generate(3, (index) {
                                return Container(
                                  width: 100,
                                  height: 100,
                                  margin: EdgeInsets.symmetric(horizontal: 4),
                                  decoration: BoxDecoration(
                                    color: darkModeConsumer.isDark ?darktxtcolor : Colors.grey[300],
                                    borderRadius: BorderRadius.circular(24),
                                  ),
                                  child: Shimmer.fromColors(
                                    baseColor: darkModeConsumer.isDark ?darktxtcolor : Colors.grey[300]!,
                                    highlightColor: Colors.grey[100]!,
                                    child: Container(
                                      color: darkModeConsumer.isDark ?darktxtcolor : Colors.grey[300],
                                    ),
                                  ),
                                );
                              }),
                            )
                          : ScrollViewH(
                              resorts: resortsConsumer.resorts,
                              title: AppLocalizations.of(context)!.trips
                            ),
                      SizedBox(height: getSize(context).height * 0.02),
                      resortsConsumer.isLoading
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: List.generate(3, (index) {
                                return Container(
                                  width: 100,
                                  height: 100,
                                  margin: EdgeInsets.symmetric(horizontal: 4),
                                  decoration: BoxDecoration(
                                    color: darkModeConsumer.isDark ?darktxtcolor : Colors.grey[300],
                                    borderRadius: BorderRadius.circular(24),
                                  ),
                                  child: Shimmer.fromColors(
                                    baseColor: darkModeConsumer.isDark ?darktxtcolor : Colors.grey[300]!,
                                    highlightColor: Colors.grey[100]!,
                                    child: Container(
                                      color: Colors.grey[300],
                                    ),
                                  ),
                                );
                              }),
                            )
                          : ScrollViewH(
                              resorts: resortsConsumer.resorts,
                              title: AppLocalizations.of(context)!.offers),
                      SizedBox(height: getSize(context).height * 0.1),
                    ],
                  ),
                )
              ],
            )),
          ],
        ),
      );
    });
  }
}
