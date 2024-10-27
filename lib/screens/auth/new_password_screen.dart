import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:travel_in/screens/auth/log_in_screen.dart';

import 'package:travel_in/widgets/buttons/back_button.dart';

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
 
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
      Stack(children:[
                 TopImage(),
               Padding(
                    padding: const EdgeInsets.all(16),
                     child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [ 
                     GestureDetector(
                                onTap: (){
                                },
                                child: CustomBackButton()
                              ),
                              ],
                            ),
                          ),
      
                 ]),          
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
                    hintText: "كلمة المرور ",
                    imagePath: "assets/icons/lock.png",
                    controller: lockController,
                    preFexIcon: Image.asset("assets/icons/open_eye.png"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomeTextBox(
                    hintText: "تأكيد كلمة المرور",
                    imagePath: "assets/icons/lock.png",
                    controller: confirmLockController,
                    preFexIcon: Image.asset("assets/icons/open_eye.png"),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  BlueButton(onTap: () {}, buttonText: "تعيين")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
