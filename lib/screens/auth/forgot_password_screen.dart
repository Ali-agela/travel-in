import 'package:flutter/material.dart';
import 'package:travel_in/screens/auth/new_password_screen.dart';
import 'package:travel_in/widgets/buttons/back_button.dart';
import 'package:travel_in/widgets/buttons/blueButton.dart';
import 'package:travel_in/widgets/images/top_image.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:travel_in/widgets/texts/label.dart';
import 'package:travel_in/widgets/texts/pin_field.dart';

class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({super.key});
  final TextEditingController codeController1 =
      TextEditingController(text: "_");
  final TextEditingController codeController2 =
      TextEditingController(text: "_");
  final TextEditingController codeController3 =
      TextEditingController(text: "_");
  final TextEditingController codeController4 =
      TextEditingController(text: "_");
  final TextEditingController codeController5 =
      TextEditingController(text: "_");
  final TextEditingController codeController6 =
      TextEditingController(text: '_');

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(children: [
                TopImage(),

               Padding(
                    padding: const EdgeInsets.all(16),
                     child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [ 
                     GestureDetector(
                                onTap: (){
                                },
                                child: const CustomBackButton()
                              ),
                              ],
                            ),
                          ),
                          ]),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 55,
                    ),
                    Label(
                        title: AppLocalizations.of(context)!.forgetpassword,
                        subTitle:
                            "لقد تم إرسال رمز تسجيل الدخول إلى البريد الإلكتروني الخاص بك "),
                    SizedBox(
                      height: 35,
                    ),
                    Label(title: "أدخل الرمز هنا", subTitle: ""),
                    SizedBox(
                      height: 10,
                    ),

                    // TODO add the otp text fields
                    PinField(),
                    SizedBox(
                      height: 50,
                    ),
                    BlueButton(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NewPasswordScreen()));
                        },
                        buttonText: "تأكيد")
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
