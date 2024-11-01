import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:provider/provider.dart';
import 'package:travel_in/helper/constant.dart';
import 'package:travel_in/provider/dark_mode_provider.dart';
import 'package:travel_in/provider/resorts_provider.dart';

import 'package:travel_in/widgets/buttons/back_button.dart';
import 'package:travel_in/widgets/card/resort_offer_card.dart';
import 'package:travel_in/widgets/clickables/text_filter_row.dart';
import 'package:travel_in/widgets/dialogs/filter_dialog.dart';
import 'package:travel_in/widgets/images/top_image.dart';
import 'package:travel_in/widgets/scrolls/scroll_view_h.dart';
import 'package:travel_in/widgets/texts/center_app_title.dart';
import 'package:travel_in/widgets/texts/label.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer2<ResortsProvider, DarkModeProvider>(
        builder: (context, resortsConsumer, darkModeConsumer, child) {
      return Scaffold(
          body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(children: [
              TopImage(),
              CenterAppTitle(title: AppLocalizations.of(context)!.search),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                        onTap: () {},
                        child: CustomBackButton(
                          isMain: true,
                        )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 108, 16, 0),
                child: Row(
                  children: [
                    TextFilterRow(
                      subtitle: AppLocalizations.of(context)!.filterresults,
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (builder) => FilterDialog());
                      },
                    ),
                    SizedBox(
                      width: 220,
                    ),
                    TextFilterRow(
                      subtitle: AppLocalizations.of(context)!.all,
                      onTap: () {},
                    ),
                  ],
                ),
              )
            ]),
            ScrollViewH(
              title: AppLocalizations.of(context)!.bestrated,
              resorts: resortsConsumer.resorts,
            ),
            ScrollViewH(
              title: AppLocalizations.of(context)!.recentlyadded,
              resorts: resortsConsumer.resorts,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
              child: Text(
                AppLocalizations.of(context)!.bestdeals,
                textAlign: TextAlign.center,
                style: GoogleFonts.cairo(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: darkModeConsumer.isDark ? white : Colors.black),
              ),
            ),
            // Expanded(
            //   child: ListView.builder(
            //       padding: EdgeInsets.all(10),
            //       itemCount: resortsConsumer.resorts.length,
            //       itemBuilder: (context, index) {
            //         return ResortOfferCard();
            //       }),
            // ),
          ],
        ),
      ));
    });
  }
}
