import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_in/screens/onboardings/onboarding3.dart';
import 'package:travel_in/widgets/buttons/whiteButton.dart';
import 'package:travel_in/widgets/onboardings/dots_indecaters.dart';
import 'package:travel_in/widgets/onboardings/onboarding.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class OnBoarding2 extends StatelessWidget {
  const OnBoarding2({super.key});

  @override
  Widget build(BuildContext context) {
    return OnBoarding(
        imageName: 'onboarding2.png',
        child: Column(
          children: [
            Text(AppLocalizations.of(context)!.adventurewaits,
                style: GoogleFonts.cairo(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                )),
            Text(
                AppLocalizations.of(context)!.discoverdestinationsrichinculturehistoryandnaturalscenery,
                textAlign: TextAlign.center,
                style: GoogleFonts.cairo(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                )),
            Text(AppLocalizations.of(context)!.discoverthebesttouroperatorsandbepartoftheadventure,
                textAlign: TextAlign.center,
                style: GoogleFonts.cairo(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                )),
            const SizedBox(height: 20),
            const DotsIndecaters(index: 2),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: whiteButton(
                  onTap: () {
                    Navigator.push(context, CupertinoPageRoute(builder: (builder)=>OnBoarding3()));
                  },
                  buttonText: 'التالي'),
            )
          ],
        ));
  }
}
