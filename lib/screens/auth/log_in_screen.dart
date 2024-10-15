import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_in/helper/constant.dart';
import 'package:travel_in/helper/size.dart';
import 'package:travel_in/widgets/buttons/blueButton.dart';
import 'package:travel_in/widgets/buttons/vendor_icon.dart';
import 'package:travel_in/widgets/dividers/or_divider.dart';
import 'package:travel_in/widgets/images/logo_image.dart';
import 'package:travel_in/widgets/texts/custome_text_box.dart';
import 'package:travel_in/widgets/texts/label.dart';

class LogInScreen extends StatelessWidget {
  LogInScreen({super.key});
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LogoImage(),
              const SizedBox(height: 20),
              const Label(
                  title: "تسجيل الدخول", subTitle: "مرحبا بك في Travel In "),
              const SizedBox(height: 20),
              CustomeTextBox(
                hintText: "رقم الهاتف",
                imagePath: "assets/icons/phone.png",
                controller: phoneController,
              ),
              SizedBox(height: 20),
              CustomeTextBox(
                hintText: "كلمة المرور",
                imagePath: "assets/icons/lock.png",
                controller: passwordController,
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  TextButton(
                    onPressed: () {
                      print('pressed');
                    },
                    child: Text(
                      'نسيت كلمة المرور؟',
                      textDirection: TextDirection.ltr,
                      style: GoogleFonts.cairo(
                        color: blue1,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              BlueButton(onTap: () {}, buttonText: "تسجيل الدخول"),
              SizedBox(height: 35),
              OrDivider(),
              SizedBox(height: 50),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                VendorIcon(
                  path: "assets/icons/google.png",
                  onTap: () {
                    print('pressed');
                  },
                ),
                VendorIcon(
                  path: "assets/icons/apple.png",
                  onTap: () {
                    print('pressed');
                  },
                ),
                VendorIcon(
                  path: "assets/icons/facebook.png",
                  onTap: () {
                    print('pressed');
                  },
                ),
              ]),
              SizedBox(height: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      print('pressed');
                    },
                    child: Text(
                      'إنشاء حساب',
                      textDirection: TextDirection.ltr,
                      style: GoogleFonts.cairo(
                        color: blue1,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    'ليس لديك حساب؟',
                    textDirection: TextDirection.ltr,
                    style: GoogleFonts.cairo(
                      color: greytxt,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
