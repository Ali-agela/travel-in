import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_in/screens/auth/log_in_screen.dart';
import 'package:travel_in/widgets/buttons/blueButton.dart';
import 'package:travel_in/widgets/images/top_image.dart';
import 'package:travel_in/widgets/texts/custome_text_box.dart';
import 'package:travel_in/widgets/texts/label.dart';

class NewPasswordScreen extends StatelessWidget {
  NewPasswordScreen({super.key});
  final TextEditingController lockController = TextEditingController();
  final TextEditingController confirmLockController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          TopImage(),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                Label(
                    title: "إنشاء كلمة السر",
                    subTitle: "قم بتعيين كلمة السر الجديدة لحسابك"),
                SizedBox(
                  height: 70,
                ),
                CustomeTextBox(
                  validate: (value){
                    if(value!.isEmpty){
                      return 'الرجاء ادخال كلمة المرور';
                    }
                    return null;
                  },
                  hintText: "كلمة المرور ",
                  imagePath: "assets/icons/lock.png",
                  controller: lockController,
                  preFexIcon: Image.asset("assets/icons/open_eye.png"),
                ),
                SizedBox(
                  height: 20,
                ),
                CustomeTextBox(
                  validate: (value){
                    if(value!.isEmpty){
                      return 'الرجاء ادخال كلمة المرور';
                    }
                    return null;
                  },
                  hintText: "تأكيد كلمة المرور",
                  imagePath: "assets/icons/lock.png",
                  controller: confirmLockController,
                  preFexIcon: Image.asset("assets/icons/open_eye.png"),
                ),
                SizedBox(
                  height: 50,
                ),
                BlueButton(onTap: () {
                  print("RESET PASSWORD");
                  Navigator.push(context,CupertinoPageRoute(builder: (context) => LogInScreen()));
                }, buttonText: "تعيين")
              ],
            ),
          )
        ],
      ),
    );
  }
}
