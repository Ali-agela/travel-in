import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:travel_in/provider/authentication_provider.dart';
import 'package:travel_in/screens/auth/log_in_screen.dart';
import 'package:travel_in/screens/auth/sign_up_screen.dart';
import 'package:travel_in/widgets/buttons/whiteButton.dart';
import 'package:travel_in/widgets/onboardings/dots_indecaters.dart';
import 'package:travel_in/widgets/onboardings/onboarding.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class OnBoarding3 extends StatelessWidget {
  const OnBoarding3({super.key});

  @override
  Widget build(BuildContext context) {
    return OnBoarding(
        bottomDistance: 40,
        imageName: 'onboarding3.png',
        child: Column(
          children: [
            Text(AppLocalizations.of(context)!.easyfastandsecurebooking,
                style: GoogleFonts.cairo(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                )),
            Text(AppLocalizations.of(context)!.endlessoptions,
                textAlign: TextAlign.center,
                style: GoogleFonts.cairo(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                )),
            SizedBox(height: 20),
            DotsIndecaters(index: 3),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: whiteButton(
                  onTap: () {
                    Provider.of<AuthenticationProvider>(context, listen: false)
                        .changIsFirstTime();

                    Navigator.push(context,
                        MaterialPageRoute(builder: (builder) => LogInScreen()));
                  },
                  buttonText: AppLocalizations.of(context)!.login),
            ),
            SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: whiteButton(
                  onTap: () {
                    Provider.of<AuthenticationProvider>(context, listen: false)
                        .changIsFirstTime();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (builder) => SignUpScreen()));
                  },
                  buttonText: AppLocalizations.of(context)!.createanaccount),
            )
          ],
        ));
  }
}
