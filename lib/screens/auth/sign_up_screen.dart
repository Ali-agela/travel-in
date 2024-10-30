import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:travel_in/helper/constant.dart';
import 'package:travel_in/helper/size.dart';
import 'package:travel_in/provider/authentication_provider.dart';
import 'package:travel_in/screens/auth/log_in_screen.dart';
import 'package:travel_in/widgets/buttons/back_button.dart';
import 'package:travel_in/widgets/buttons/blueButton.dart';
import 'package:travel_in/widgets/buttons/vendor_icon.dart';
import 'package:travel_in/widgets/dividers/or_divider.dart';
import 'package:travel_in/widgets/images/top_image.dart';
import 'package:travel_in/widgets/texts/custome_text_box.dart';
import 'package:travel_in/widgets/texts/label.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formkey,
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
                              onTap: () {}, child: CustomBackButton()),
                        ],
                      ),
                    ),
                           Padding(
                             padding: const EdgeInsets.fromLTRB(16, 64, 16, 24),
                             child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 Label(
                                  title: AppLocalizations.of(context)!.startjourney,
                                  subTitle: AppLocalizations.of(context)!.fillinthefollowinginformation),
                               ],
                             ),
                           ),
                  

                  ]),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: Column(
                      children: [
                        CustomeTextBox(
                            validate: (value) {
                              if (value!.isEmpty) {
                                return AppLocalizations.of(context)!.pleaseentername;
                              }
                              return null;
                            },
                            hintText: AppLocalizations.of(context)!.name,
                            imagePath: "assets/icons/person.png",
                            controller: nameController),
                        SizedBox(
                          height: 16,
                        ),
                        CustomeTextBox(
                            validate: (value) {
                              if (value!.isEmpty) {
                                return AppLocalizations.of(context)!.pleaseenterphone;
                              }
                              if (value.length != 10) {
                                return AppLocalizations.of(context)!.pleaseentervalidphone;
                              }
                              return null;
                            },
                            hintText: AppLocalizations.of(context)!.phonenumber,
                            imagePath: "assets/icons/phone.png",
                            controller: phoneController),
                        SizedBox(
                          height: 16,
                        ),
                        CustomeTextBox(
                            validate: (value) {
                              if (value!.isEmpty) {
                                return AppLocalizations.of(context)!.pleaseenteremail;
                              }
                              if (!value.contains('@')) {
                                return AppLocalizations.of(context)!.pleaseentervalidemail;
                              }
                              return null;
                            },
                            hintText: AppLocalizations.of(context)!.email,
                            imagePath: "assets/icons/email.png",
                            controller: emailController),
                        SizedBox(
                          height: 16,
                        ),
                        CustomeTextBox(
                          validate: (value) {
                            if (value!.isEmpty) {
                              return AppLocalizations.of(context)!.pleaseenterpassword;
                            }
                            if (value.length < 8) {
                              return AppLocalizations.of(context)!.pleaseentervalidpassword;
                            }
                            return null;
                          },
                          hintText: AppLocalizations.of(context)!.password,
                          imagePath: "assets/icons/lock.png",
                          controller: passwordController,
                          isPassword: true,
                          preFexIcon: Image.asset("assets/icons/open_eye.png"),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        BlueButton(
                          onTap: () {
                            if (formkey.currentState!.validate()) {
                              Provider.of<AuthenticationProvider>(context,
                                      listen: false)
                                  .signUp({
                                "name": nameController.text,
                                "phone": phoneController.text,
                                "email": emailController.text,
                                "password": passwordController.text,
                              }).then((onValue) {
                                if (onValue) {
                                  Navigator.pushReplacement(
                                      context,
                                      CupertinoPageRoute(
                                          builder: (builder) => LogInScreen()));
                                }
                              });
                              print('done');
                            }
                          },
                          buttonText: AppLocalizations.of(context)!.createanaccount,
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        OrDivider(),
                        SizedBox(
                          height: 24,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
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
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              AppLocalizations.of(context)!.haveaccount,
                              textDirection: TextDirection.ltr,
                              style: GoogleFonts.cairo(
                                color: greytxt,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                    context,
                                    CupertinoPageRoute(
                                        builder: (builder) => LogInScreen()));
                              },
                              child: Text(
                                AppLocalizations.of(context)!.login,
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
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
