import 'package:flutter/material.dart';
import 'package:travel_in/widgets/buttons/blueButton.dart';
import 'package:travel_in/widgets/images/top_image.dart';
import 'package:travel_in/widgets/texts/label.dart';

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
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          TopImage(),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                SizedBox(
                  height: 55,
                ),
                Label(
                    title: "هل نسيت كلمة السر ؟",
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
                // TODO add the otp text fields

                SizedBox(
                  height: 50,
                ),
                BlueButton(onTap: () {}, buttonText: "تأكيد")
              ],
            ),
          ),
        ],
      ),
    );
  }
}
