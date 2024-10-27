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

        backgroundColor: Colors.white,
        body: Center(
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
                            child: CustomBackButton()
                          ),
                          ],
                        ),
                      ),
        
                   ]),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Column(
                    children: [
                      Label(
                          title: "لنبدأ الرحلة ",
                          subTitle: "قم بتعبئة البيانات الأتية "),
                      SizedBox(height: 20),
                      CustomeTextBox(
                        validate: (value) {
                              if (value!.isEmpty) {
                                return 'الرجاء ادخال الاسم';
                              }
                              return null;
                            },
                          hintText: "الاسم",
                          imagePath: "assets/icons/person.png",
                          controller: nameController),
                      SizedBox(
                        height: 20,
                      ),
                      CustomeTextBox(
                        validate: (value) {
                             CustomeTextBox(
                            validate: (value) {
                              if (value!.isEmpty) {
                                return 'الرجاء ادخال رقم الهاتف';
                              }
                              if (value.length != 10) {
                                return 'الرجاء ادخال رقم هاتف صحيح';
                              }
                              return null;
              
                              },
                            hintText: "رقم الهاتف",
                            imagePath: "assets/icons/phone.png",
                            controller: phoneController),
                        SizedBox(
                          height: 20,
                        ),
                        CustomeTextBox(
                            validate: (value) {
                              if (value!.isEmpty) {
                                return 'الرجاء ادخال البريد الالكتروني';
                              }
                              if (!value.contains('@')) {
                                return 'الرجاء ادخال بريد الكتروني صحيح';
                              }
                              return null;
                            },
                            hintText: "البريد الالكتروني ",
                            imagePath: "assets/icons/email.png",
                            controller: emailController),
                        SizedBox(
                          height: 20,
                        ),
                        CustomeTextBox(
                          validate: (value) {
                            if (value!.isEmpty) {
                              return 'الرجاء ادخال كلمة المرور';
                            }
                            if (value.length < 8) {
                              return 'كلمة المرور يجب ان تكون اكثر من 6 احرف';
                            }
                            return null;
                          },
                          hintText: "كلمة المرور",
                          imagePath: "assets/icons/lock.png",
                          controller: passwordController,
                          isPassword: true,
                          preFexIcon: Image.asset("assets/icons/open_eye.png"),
                        ),
                        SizedBox(
                          height: 20,
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
                          buttonText: "إنشاء حساب",
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        OrDivider(),
                        SizedBox(
                          height: 20,
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
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'ليس لديك حساب؟',
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
                                'إنشاء حساب',
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
