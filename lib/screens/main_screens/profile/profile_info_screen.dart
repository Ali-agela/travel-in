import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_in/helper/constant.dart';
import 'package:travel_in/helper/file_picke.dart';
import 'package:travel_in/helper/size.dart';
import 'package:travel_in/provider/authentication_provider.dart';
import 'package:travel_in/widgets/buttons/back_button.dart';
import 'package:travel_in/widgets/buttons/blueButton.dart';
import 'package:travel_in/widgets/buttons/edit_button.dart';
import 'package:travel_in/widgets/buttons/whiteButton.dart';
import 'package:travel_in/widgets/images/top_image.dart';
import 'package:travel_in/widgets/texts/center_app_title.dart';
import 'package:travel_in/widgets/texts/custom_title.dart';
import 'package:travel_in/widgets/texts/text_field_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ProfileInfoScreen extends StatefulWidget {
  const ProfileInfoScreen({super.key});

  @override
  State<ProfileInfoScreen> createState() => _ProfileInfoScreenState();
}

class _ProfileInfoScreenState extends State<ProfileInfoScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  bool edit = false;

  @override
  void initState() {
    super.initState();
    var user =
        Provider.of<AuthenticationProvider>(context, listen: false).currentUser;
    if (user != null) {
      nameController.text = user.name;
      phoneController.text = user.phone;
      emailController.text = user.email;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthenticationProvider>(
      builder: (context, authenticationConsumer, _) {
        return Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(children: [
                    TopImage(),
                    CenterAppTitle(
                      title: !edit
                          ? AppLocalizations.of(context)!.profileinfo
                          : AppLocalizations.of(context)!.editprofile,
                    ),
                    Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Row for Back and Edit buttons
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomBackButton(),
                              EditButton(
                                ontap: () {
                                  setState(() {
                                    edit = !edit;
                                  });
                                },
                              ),
                            ],
                          ),
                          SizedBox(height: 20), // Added space
                          Center(
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.transparent,
                                border: Border.all(width: 1, color: bluegreen),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.transparent,
                                    border:
                                        Border.all(width: 2, color: darkblue),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(200),
                                    child: authenticationConsumer
                                                .currentUser!.imageUrl ==
                                            null
                                        ? Image.asset(
                                            'assets/logo/logo.png',
                                            width:
                                                getSize(context).width * 0.28,
                                            height:
                                                getSize(context).width * 0.28,
                                            fit: BoxFit.cover,
                                          )
                                        : Image.network(
                                            "https://lizard-well-boar.ngrok-free.app/storage/${authenticationConsumer.currentUser!.imageUrl}",
                                            width:
                                                getSize(context).width * 0.28,
                                            height:
                                                getSize(context).width * 0.28,
                                            fit: BoxFit.cover,
                                          ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          if (edit)
                            Center(
                              child: TextButton(
                                onPressed: () {
                                  pickFiles().then((n) {
                                    if (n != null) {
                                      Provider.of<AuthenticationProvider>(
                                              context,
                                              listen: false)
                                          .updateUserPhoto(n);
                                    }
                                  });
                                },
                                child: CustomTitle(
                                  title: AppLocalizations.of(context)!.editpic,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          CustomTitle(
                            title: AppLocalizations.of(context)!.name,
                            fontSize: 14,
                          ),
                          TextFieldWidget(
                            isEnabled: edit,
                            height: 0.5,
                            controller: nameController,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "اسم المستخدم مطلوب!";
                              }
                              if (value.length < 2) {
                                return "قم بإدخال اسم مستخدم صحيح!";
                              }
                              return null;
                            },
                            hint: '',
                            label: '',
                          ),
                          CustomTitle(
                            title: AppLocalizations.of(context)!.email,
                            fontSize: 14,
                          ),
                          TextFieldWidget(
                            isEnabled: edit,
                            height: 0.5,
                            controller: emailController,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "email is Required!";
                              }
                              if (!value.contains("@") ||
                                  !value.contains(".")) {
                                return "Please Enter Valid Email.";
                              }
                              return null;
                            },
                            hint: '',
                            label: ' ',
                          ),
                          CustomTitle(
                            title: AppLocalizations.of(context)!.phonenumber,
                            fontSize: 14,
                          ),
                          TextFieldWidget(
                            isEnabled: edit,
                            height: 0.5,
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
                            hint: '',
                            label: '',
                          ),
                          SizedBox(height: 24),
                          if (edit)
                            Center(
                              child: BlueButton(
                                onTap: () {
                                  // Save changes logic can be added here
                                  setState(() {
                                    edit = !edit; // Toggle edit mode
                                  });
                                },
                                buttonText:
                                    AppLocalizations.of(context)!.savechanges,
                              ),
                            ),
                          SizedBox(height: 16),
                          if (edit)
                            Center(
                              child: whiteButton(
                                onTap: () {
                                  setState(() {
                                    edit = !edit; // Cancel changes
                                  });
                                },
                                buttonText:
                                    AppLocalizations.of(context)!.cancel,
                              ),
                            ),
                        ],
                      ),
                    ),
                  ]),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
