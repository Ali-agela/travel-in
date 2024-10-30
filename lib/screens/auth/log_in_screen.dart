import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:travel_in/helper/constant.dart';
import 'package:travel_in/provider/authentication_provider.dart';
import 'package:travel_in/provider/dark_mode_provider.dart';
import 'package:travel_in/screens/auth/forgot_password_screen.dart';
import 'package:travel_in/screens/auth/sign_up_screen.dart';
import 'package:travel_in/screens/main_navigator.dart';
import 'package:travel_in/widgets/buttons/blueButton.dart';
import 'package:travel_in/widgets/buttons/vendor_icon.dart';
import 'package:travel_in/widgets/dividers/or_divider.dart';
import 'package:travel_in/widgets/images/logo_image.dart';
import 'package:travel_in/widgets/texts/custome_text_box.dart';
import 'package:travel_in/widgets/texts/label.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class LogInScreen extends StatelessWidget {
  LogInScreen({super.key});
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Consumer<DarkModeProvider>(
      builder: (context, darkModeConsumer, _) {
        return Scaffold(
          body: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: SingleChildScrollView(
                child: SafeArea(
                  child: Form(
                    key: formkey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        LogoImage(),
                        const SizedBox(height: 8),
                        Label(
                            title: AppLocalizations.of(context)!.login,
                            subTitle: AppLocalizations.of(context)!.hello),
                        const SizedBox(height: 20),
                        CustomeTextBox(
                          validate: (value) {
                            if (value!.isEmpty) {
                              return AppLocalizations.of(context)!.pleaseenterphone;
                            }
                          },
                          hintText: AppLocalizations.of(context)!.phonenumber,
                          imagePath: "assets/icons/phone.png",
                          controller: phoneController,
                        ),
                        SizedBox(height: 16),
                        CustomeTextBox(
                          validate: (value) {
                            if (value!.isEmpty) {
                              return AppLocalizations.of(context)!.pleaseenterpassword;
                            }
                            return null;
                          },
        
                          hintText: AppLocalizations.of(context)!.password,
                          imagePath: "assets/icons/lock.png",
                          controller: passwordController,
                        ),
                        SizedBox(height: 16),
                        Row(
                          children: [
                            TextButton(
                              onPressed: () {
        
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ForgotPasswordScreen()));
                                print('pressed');
        
                              },
                              child: Text(
                                AppLocalizations.of(context)!.forgetpassword,
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
                        SizedBox(height: 16),
        
                        BlueButton(
                            onTap: () {
                              print('Log IN reqest ');
                              if (formkey.currentState!.validate()) {
                                print('valid');
                                Provider.of<AuthenticationProvider>(context,
                                        listen: false)
                                    .logIn({
                                  "phone": phoneController.text,
                                  "password": passwordController.text,
                                }).then((onValue) {
                                  if (onValue) {
                                    Navigator.pushAndRemoveUntil(
                                        context,
                                        CupertinoPageRoute(
                                            builder: (builder) => MainNavigator()),
                                        (context) => false);
                                  } else {
                                    print('Failed');
                                  }
                                });
                              } else {
                                print('Not valid');
                              }
                            },
                            buttonText: AppLocalizations.of(context)!.login),
        
                        SizedBox(height: 24),
                        OrDivider(),
                        SizedBox(height: 24),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              VendorIcon(
                                path: "assets/icons/google.png",
                                onTap: () {
        
                                  print('LOG IN WTH Google');
        
                                },
                              ),
                              VendorIcon(
                                path: "assets/icons/apple.png",
                                onTap: (){
                                  print('LOG IN WTH Appale');
        
                                  print('pressed');
        
                                },
                              ),
                              VendorIcon(
                                path: "assets/icons/facebook.png",
                                onTap: () {
        
                                  print('LOG IN WTH facebook');
        
                                  print('pressed');
        
                                },
                              ),
                            ]),
                        SizedBox(height: 24),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              AppLocalizations.of(context)!.donothaveaccount,
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
                                    CupertinoDialogRoute(
                                        builder: (builder) => SignUpScreen(),
                                        context: context));
        
                                print('pressed');
        
                              },
                              child: Text(
                              AppLocalizations.of(context)!.createanaccount,
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
                ),
              ),
            ),
          ),
        );
      }
    );
  }
}
