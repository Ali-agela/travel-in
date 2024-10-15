import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_in/screens/onboardings/onboarding2.dart';
import 'package:travel_in/widgets/buttons/whiteButton.dart';
import 'package:travel_in/widgets/onboardings/dots_indecaters.dart';
import 'package:travel_in/widgets/onboardings/onboarding.dart';

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
                  text: 'Travelin',
                  style: GoogleFonts.cairo(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  )),
              TextSpan(
                  text: 'ابدأ التخطيط لرحلتك القادمة مع',
                  style: GoogleFonts.cairo(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  )),
            ])),
            Text(
                'اختر من بين مجموعة واسعة من المنتجعات والمصائف المميزة في ليبيا واستمتع بتجربة  لا تنسى',
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
                  buttonText: 'التالي'),
            )
          ],
        ));
  }
}
