import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_in/screens/auth/log_in_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
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
                      title: AppLocalizations.of(context)!.createpassword,
                      subTitle: AppLocalizations.of(context)!.createnewpassword),
                  SizedBox(
                    height: 70,
                  ),
                  CustomeTextBox(
                    validate: (value) {
                      if (value!.isEmpty) {
                        return AppLocalizations.of(context)!.pleaseenterpassword;
                      }
                    },
                    hintText: AppLocalizations.of(context)!.password,
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
                        return AppLocalizations.of(context)!.pleaseenterpassword;
                      }
                      if(value != lockController.text){
                        return AppLocalizations.of(context)!.invalidpassword;
                      }
                    },
                    hintText: AppLocalizations.of(context)!.confirmpassword,
                    imagePath: "assets/icons/lock.png",
                    controller: confirmLockController,
                    preFexIcon: Image.asset("assets/icons/open_eye.png"),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  BlueButton(onTap: () {}, buttonText: AppLocalizations.of(context)!.verify)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
