import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_in/helper/constant.dart';
import 'package:travel_in/helper/size.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(top: 70.0, right: 25),
        child: Container(
          decoration: const ShapeDecoration(
            color: Color(0xFFF6F6F8),
            shape: OvalBorder(),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 18),
            child: Icon(
              Icons.arrow_forward_ios,
              size: 28,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                TopImage(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: Column(
                    children: [
                      Label(
                          title: "لنبدأ الرحلة ",
                          subTitle: "قم بتعبئة البيانات الأتية "),
                      SizedBox(height: 20),
                      CustomeTextBox(
                          hintText: "الاسم",
                          imagePath: "assets/icons/person.png",
                          controller: nameController),
                      SizedBox(
                        height: 20,
                      ),
                      CustomeTextBox(
                          hintText: "رقم الهاتف",
                          imagePath: "assets/icons/phone.png",
                          controller: phoneController),
                      SizedBox(
                        height: 20,
                      ),
                      CustomeTextBox(
                          hintText: "البريد الالكتروني ",
                          imagePath: "assets/icons/email.png",
                          controller: emailController),
                      SizedBox(
                        height: 20,
                      ),
                      CustomeTextBox(
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
                        onTap: () {},
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
