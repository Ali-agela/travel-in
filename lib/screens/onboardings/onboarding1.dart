import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_in/screens/onboardings/onboarding2.dart';
import 'package:travel_in/widgets/buttons/whiteButton.dart';
import 'package:travel_in/widgets/onboardings/dots_indecaters.dart';
import 'package:travel_in/widgets/onboardings/onboarding.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class Onboarding1 extends StatelessWidget {
  const Onboarding1({super.key});

  @override
  Widget build(BuildContext context) {
    return OnBoarding(
        imageName: 'onboarding1.png',
        child: Column(
          children: [
            Text.rich(TextSpan(children: [
             
              TextSpan(
                  text: AppLocalizations.of(context)!.planyournexttripwithtravelin,
                  style: GoogleFonts.cairo(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  )),
                   TextSpan(
                  text: ' Travel in',
                  style: GoogleFonts.cairo(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  )),
            ])),
            Text(
                AppLocalizations.of(context)!.choosefromawiderangeofresortsanddestinationsinlibya,
                textAlign: TextAlign.center,
                style: GoogleFonts.cairo(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                )),
            SizedBox(height: 20),
            DotsIndecaters(index: 1),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: whiteButton(
                  onTap: () {
                    Navigator.push(context, CupertinoPageRoute(builder: (builder)=>OnBoarding2()));
                  },
                  buttonText: AppLocalizations.of(context)!.next),
            )
          ],
        ));
  }
}
