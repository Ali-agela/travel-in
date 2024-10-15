import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_in/widgets/buttons/whiteButton.dart';
import 'package:travel_in/widgets/onboardings/dots_indecaters.dart';
import 'package:travel_in/widgets/onboardings/onboarding.dart';

class OnBoarding3 extends StatelessWidget {
  const OnBoarding3({super.key});

  @override
  Widget build(BuildContext context) {
    return OnBoarding(
        bottomDistance: 40,
        imageName: 'onboarding3.png',
        child: Column(
          children: [
            Text('حجز سهل وسريع وآمن',
                style: GoogleFonts.cairo(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                )),
            Text(
                "تصفح كافة التفاصيل واختر ما يناسب احتياجاتك كل هذا وأكثر بضغطة زر واحدة!",
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
                    print('pressed');
                  },
                  buttonText: 'تسجيل الدخول'),
            ),
            SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: whiteButton(
                  onTap: () {
                    print('pressed');
                  },
                  buttonText: 'إنشاء حساب'),
            )
          ],
        ));
  }
}
