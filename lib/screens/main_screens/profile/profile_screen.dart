import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_in/helper/constant.dart';
import 'package:travel_in/helper/size.dart';
import 'package:travel_in/provider/authentication_provider.dart';
import 'package:travel_in/provider/dark_mode_provider.dart';
import 'package:travel_in/screens/main_screens/profile/profile_info_screen.dart';
import 'package:travel_in/widgets/buttons/back_button.dart';
import 'package:travel_in/widgets/buttons/blueButton.dart';
import 'package:travel_in/widgets/clickables/expansion_tile.dart';
import 'package:travel_in/widgets/clickables/setting_tile.dart';
import 'package:travel_in/widgets/images/top_image.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:travel_in/widgets/texts/center_app_title.dart';
import 'package:travel_in/widgets/texts/custom_title.dart';
import 'package:travel_in/widgets/texts/label.dart';
import 'package:travel_in/widgets/texts/pin_field.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  void initState() {
    Provider.of<AuthenticationProvider>(context, listen: false).getMe();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer2<DarkModeProvider, AuthenticationProvider>(
        builder: (context, darkModeConsumer, authenticationConsumer, _) {
      return authenticationConsumer.currentUser == null
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Scaffold(
              body: SafeArea(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(children: [
                        TopImage(),
                        CenterAppTitle(
                            title: AppLocalizations.of(context)!.travelin),
                        Positioned(
                          child: Center(
                            child: Column(children: [
                              Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 16),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        GestureDetector(
                                            onTap: () {},
                                            child: CustomBackButton(isMain: true,)),
                                      ])),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.transparent,
                                          border: Border.all(
                                              width: 1, color: bluegreen)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.transparent,
                                              border: Border.all(
                                                  width: 2, color: darkblue)),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(200),
                                            child: authenticationConsumer
                                                        .currentUser!
                                                        .imageUrl ==
                                                    null
                                                ? Image.asset(
                                                    'assets/logo/logo.png',
                                                    width:
                                                        getSize(context).width *
                                                            0.28,
                                                    height:
                                                        getSize(context).width *
                                                            0.28,
                                                    fit: BoxFit.cover,
                                                  )
                                                : Image.network(
                                                    "https://lizard-well-boar.ngrok-free.app/storage/${authenticationConsumer.currentUser!.imageUrl}",
                                                    width:
                                                        getSize(context).width *
                                                            0.28,
                                                    height:
                                                        getSize(context).width *
                                                            0.28,
                                                    fit: BoxFit.cover,
                                                  ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ]),
                              SizedBox(
                                height: 8,
                              ),
                              CustomTitle(
                                  title:
                                      authenticationConsumer.currentUser!.name),
                            ]),
                          ),
                        ),
                      ]),
                      SizedBox(
                        height: 8,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: darkModeConsumer.isDark ? darkcolor : white,
                            borderRadius: BorderRadius.all(Radius.circular(16)),
                            boxShadow: [
                              BoxShadow(
                                color: lightgrey.withOpacity(0.5),
                                spreadRadius: 6,
                                blurRadius: 8,
                                offset:
                                    Offset(0, 2), // changes position of shadow
                              ),
                            ],
                          ),
                          width: getSize(context).width * 0.8,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const SizedBox(height: 8),
                              SettingTile(
                                text: AppLocalizations.of(context)!
                                    .accountinformation,
                                onTab: () {
                                  Navigator.pushAndRemoveUntil(
                                      context,
                                      CupertinoPageRoute(
                                          builder: (context) =>
                                              ProfileInfoScreen()),
                                      (route) => false);
                                },
                                asset: "assets/icons/profile_icon.png",
                              ),
                              SettingTile(
                                text:
                                    AppLocalizations.of(context)!.notifications,
                                onTab: () {},
                                asset: "assets/icons/notification_icon.png",
                              ),
                              SettingTile(
                                text: AppLocalizations.of(context)!
                                    .electronicpayment,
                                onTab: () {},
                                asset: "assets/icons/payment_icon.png",
                              ),
                              SettingTile(
                                text: darkModeConsumer.isDark
                                    ? AppLocalizations.of(context)!.lightmode
                                    : AppLocalizations.of(context)!.darkmode,
                                onTab: () {
                                  Provider.of<DarkModeProvider>(context,
                                          listen: false)
                                      .switchMode();
                                },
                                asset: darkModeConsumer.isDark
                                    ? "assets/icons/mode_icon.png"
                                    : "assets/icons/light_mode_icon.png",
                              ),
                              const CustomExpansionTile(),
                              SettingTile(
                                text: AppLocalizations.of(context)!.contactus,
                                onTab: () {},
                                asset: "assets/icons/contact_icon.png",
                              ),
                              SettingTile(
                                text: AppLocalizations.of(context)!.logout,
                                onTab: () {},
                                asset: "assets/icons/logout_icon.png",
                                withDivider: false,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
    });
  }
}
