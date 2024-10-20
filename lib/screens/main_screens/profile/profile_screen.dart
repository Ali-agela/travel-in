import 'package:flutter/material.dart';
import 'package:travel_in/helper/constant.dart';
import 'package:travel_in/helper/size.dart';
import 'package:travel_in/widgets/buttons/blueButton.dart';
import 'package:travel_in/widgets/clickables/expansion_tile.dart';
import 'package:travel_in/widgets/clickables/setting_tile.dart';
import 'package:travel_in/widgets/images/top_image.dart';
import 'package:travel_in/widgets/texts/custom_title.dart';
import 'package:travel_in/widgets/texts/label.dart';
import 'package:travel_in/widgets/texts/pin_field.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(children: [
              TopImage(),
              Positioned(
                child: Center(
                  child: Column(
                   
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [ 
                        SizedBox(width: 24,),
                        CustomTitle(title: "تعديل الحساب"),         
                        SizedBox(width: 16,),


                          GestureDetector(
                            onTap: (){
                         
                            },
                            child: Container(
                               decoration: BoxDecoration(
                              shape: BoxShape.circle, color: white
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Image.asset(
                                'assets/icons/arrow_icon.png',
                                 width: 32,
                                height: 32,),
                              ),
                            ),
                          ),
                          ],
                        ),
                      ),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.transparent
                            ,border: Border.all(width: 1, color: bluegreen)),
                        child:  Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Container(
                             decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.transparent
                            ,border: Border.all(width: 2, color: darkblue)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(200),
                              child: Image.asset(
                                'assets/logo/logo.png',
                                width: getSize(context).width * 0.28,
                                height: getSize(context).width * 0.28,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ]),
                               SizedBox(height: 8,),

              CustomTitle(title: "اسم المستخدم")                
                  ]),
                ),
              ),
            ]),
           SizedBox(height: 16,),
            Padding(padding: EdgeInsets.all(8),
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
    color: white,
    borderRadius: BorderRadius.all(Radius.circular(16)),
    boxShadow: [
      BoxShadow(
        color: lightgrey.withOpacity(0.5),
        spreadRadius:6,
        blurRadius: 8,
        offset: Offset(0, 2), // changes position of shadow
      ),
    ],
  ),
                  width: getSize(context).width*0.8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                 
                children: [
                           const SizedBox(height: 8),
            SettingTile(
                text: "معلومات الحساب", onTab: () {}, 
                asset: "assets/icons/profile_icon.png",),
            SettingTile(
                text: "الإشعارات", onTab: () {}, 
                asset: "assets/icons/notification_icon.png",),

            SettingTile(
                text: "الدفع الإلكتروني", onTab: () {}, 
                asset: "assets/icons/payment_icon.png",),
            
            SettingTile(
                text: "الوضع المظلم", onTab: () {}, 
                asset: "assets/icons/mode_icon.png",),

               const CustomExpansionTile(),


            SettingTile(
                text: "تواصل معنا", onTab: () {}, 
                asset: "assets/icons/contact_icon.png",),

            SettingTile(
                text: "تسجيل الخروج", onTab: () {}, 
                asset: "assets/icons/logout_icon.png",
                withDivider: false,),
              ],),
            ),)
 
          ],
        ),
      ),
    );
  }
}
