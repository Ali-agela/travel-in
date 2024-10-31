import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_in/helper/constant.dart';
import 'package:travel_in/provider/dark_mode_provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:travel_in/provider/localization_provider.dart';

class CustomExpansionTile extends StatelessWidget {
  const CustomExpansionTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer2<DarkModeProvider, LocalizationProvider>(
        builder: (context, darkModeConsumer, localizationConsumer, _) {
      return Column(
        children: [
          ExpansionTile(
            minTileHeight: 20,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            collapsedBackgroundColor:
                darkModeConsumer.isDark ? darkcolor : white,
            backgroundColor: darkModeConsumer.isDark ? greycolor : white,
            collapsedTextColor: darkModeConsumer.isDark ? whitegrey : darkcolor,
            textColor: darkModeConsumer.isDark ? whitegrey : darkcolor,
            leading: Image.asset(
              "assets/icons/language_icon.png",
              width: 24,
              height: 24,
            ),
            title: Text(
              AppLocalizations.of(context)!.language,
              style: TextStyle(fontSize: 16),
            ),
            controlAffinity: ListTileControlAffinity.trailing,
            children: <Widget>[
              TextButton(
                  onPressed: () {
                    var language = "ar";
                    Provider.of<LocalizationProvider>(context, listen: false)
                        .storeLanguage(language);
                  },
                  child: Text(AppLocalizations.of(context)!.arabic,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: darkModeConsumer.isDark ? whitegrey : darkcolor,
                      ))),
              TextButton(
                  onPressed: () {
                    var language = "en";
                    Provider.of<LocalizationProvider>(context, listen: false)
                        .storeLanguage(language);
                  },
                  child: Text(AppLocalizations.of(context)!.english,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: darkModeConsumer.isDark ? whitegrey : darkcolor,
                      ))),
              TextButton(
                  onPressed: () {},
                  child: Text(AppLocalizations.of(context)!.italian,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: darkModeConsumer.isDark ? whitegrey : darkcolor,
                      ))),
            ],
          ),
          Divider(
            thickness: 2,
            endIndent: 4,
            indent: 4,
            color: dividercolor.withOpacity(0.5),
          ),
        ],
      );
    });
  }
}
