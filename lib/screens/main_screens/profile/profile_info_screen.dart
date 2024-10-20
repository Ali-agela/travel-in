import 'package:flutter/material.dart';
import 'package:travel_in/helper/constant.dart';
import 'package:travel_in/helper/size.dart';
import 'package:travel_in/widgets/buttons/blueButton.dart';
import 'package:travel_in/widgets/buttons/whiteButton.dart';
import 'package:travel_in/widgets/clickables/expansion_tile.dart';
import 'package:travel_in/widgets/clickables/setting_tile.dart';
import 'package:travel_in/widgets/images/top_image.dart';
import 'package:travel_in/widgets/texts/custom_title.dart';
import 'package:travel_in/widgets/texts/text_field_widget.dart';

class ProfileInfoScreen extends StatefulWidget {
  const ProfileInfoScreen({super.key});

  @override
  State<ProfileInfoScreen> createState() => _ProfileInfoScreenState();
}

class _ProfileInfoScreenState extends State<ProfileInfoScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController dobController = TextEditingController();
    TextEditingController emailController = TextEditingController();
bool edit = false;
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
                          if (!edit) 
                          GestureDetector(
                            onTap: (){
                          setState(() {
                          edit = !edit;
                        });
                            },
                            child: Container(
                               decoration: BoxDecoration(
                              shape: BoxShape.circle, color: white
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Image.asset(
                                'assets/icons/edit_icon.png',
                                 width: 32,
                                height: 32,),
                              ),
                            ),
                          ),
                           
                          
                        SizedBox(width: 24,),
                        CustomTitle(title: "تعديل الحساب"),         
                        SizedBox(width: 24,),


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
                     if (edit)
                   TextButton(onPressed: (){}, 
                   child:  CustomTitle(title: "تعديل الصورة", fontSize: 14,)),
            if (!edit)
             CustomTitle(title: "اسم المستخدم")             
                  ]),
                ),
              ),
            ]),
           SizedBox(height: 8,),
            Padding(padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTitle(title: "الاسم", fontSize: 16,),
               TextFieldWidget(
                    isEnabled: edit,
                    controller: nameController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Name is Required!";
                      }

                      if (value.length < 2) {
                        return "Enter Valid Name!";
                      }

                      return null;
                    },
                    hint: 'User name',
                    label: 'User name',
                  ),
                   
                  CustomTitle(title: "البريد الإلكتروني", fontSize: 16,),
                  TextFieldWidget(
                      isEnabled: edit,
                      controller: emailController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "email is Required!";
                        }

                        if (!value.contains("@") || !value.contains(".")) {
                        return "Please Enter Valid Email.";
                      }

                        return null;
                      },
                      hint: 'Enter email number',
                      label: 'Email'),

                CustomTitle(title: "رقم الهاتف", fontSize: 16,),
                  TextFieldWidget(
                      isEnabled: edit,
                      controller: phoneController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Phone is Required!";
                        }

                        if (value.length != 10) {
                          return "Enter Valid Phone!";
                        }

                        return null;
                      },
                      hint: 'Enter Phone number',
                      label: 'Phone'),
                            
                  CustomTitle(title: "المدينة", fontSize: 16,),
               TextFieldWidget(
                    isEnabled: edit,
                    controller: nameController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "City is Required!";
                      }

                      if (value.length < 2) {
                        return "Enter Valid City!";
                      }

                      return null;
                    },
                    hint: 'City',
                    label: 'City',
                  ),

                  CustomTitle(title: "تاريخ الميلاد", fontSize: 16,),

                  GestureDetector(
                    onTap: () {
                      if (edit)
                        showDatePicker(
                                context: context,
                                firstDate: DateTime(1997),
                                lastDate: DateTime(2006))
                            .then((selectedDate) {
                          setState(() {
                            dobController.text = selectedDate!
                                .toIso8601String()
                                .substring(0, 10);
                          });
                        });
                    },
                    child: TextFieldWidget(
                        isEnabled: false,
                        controller: dobController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "DoB is Required!";
                          }

                          return null;
                        },
                        hint: 'DoB',
                        label: 'DoB'),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                 
                 
                  if (edit) 
                  BlueButton(
                    onTap: (){ setState(() {
                            edit = !edit;
                          });}, 
                          buttonText: "حفظ التعديلات"),
                  if (edit) 

                          whiteButton(
                            onTap: (){ setState(() {
                            edit = !edit;
                          });}, 
                             buttonText: "إلغاء")
                 
                    
              ],
            ))
 
          ],
        ),
      ),
    );

  }
}