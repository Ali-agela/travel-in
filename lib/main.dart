import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:provider/provider.dart';
import 'package:travel_in/helper/constant.dart';
import 'package:travel_in/provider/authentication_provider.dart';
import 'package:travel_in/provider/base_provider.dart';
import 'package:travel_in/provider/reservation_provider.dart';
import 'package:travel_in/provider/resorts_offer_provider.dart';
import 'package:travel_in/provider/dark_mode_provider.dart';
import 'package:travel_in/provider/localization_provider.dart';
import 'package:travel_in/provider/resorts_provider.dart';
import 'package:travel_in/screens/auth/forgot_password_screen.dart';

import 'package:travel_in/screens/auth/log_in_screen.dart';
import 'package:travel_in/screens/auth/new_password_screen.dart';
import 'package:travel_in/screens/auth/sign_up_screen.dart';
import 'package:travel_in/screens/main_screens/home_screen.dart';
import 'package:travel_in/screens/main_screens/profile/profile_screen.dart';
import 'package:travel_in/screens/main_screens/search_screen.dart';
import 'package:travel_in/screens/onboardings/onboarding1.dart';
import 'package:travel_in/screens/onboardings/onboarding2.dart';
import 'package:travel_in/screens/onboardings/onboarding3.dart';
import 'package:travel_in/widgets/clickables/checkboxes.dart';
import 'package:travel_in/widgets/dialogs/filter_dialog.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<BaseProvider>(create: (context) => BaseProvider()),
        ChangeNotifierProvider<AuthenticationProvider>(create:  (context) => AuthenticationProvider()), 
        ChangeNotifierProvider<ResortsProvider>(create:(context)=> ResortsProvider()..getResorts()), 
                ChangeNotifierProvider<DarkModeProvider>(
            create: (context) => DarkModeProvider()..getMode()),
         ChangeNotifierProvider<LocalizationProvider>(
            create: (context) => LocalizationProvider()..getLanguage()),
            ChangeNotifierProvider<ResortsOfferProvider>(
            create: (context) => ResortsOfferProvider()),
        ChangeNotifierProvider<ReservationProvider>(
            create: (context) => ReservationProvider()),

      ],
      child: Consumer2<DarkModeProvider, LocalizationProvider>(
        builder: (context, darkModeConsumer, localizationConsumer, _){
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              locale: Locale(localizationConsumer.language),
              localizationsDelegates: const [
                AppLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: const [
                Locale('en'), // English
                Locale('ar'), // arabic
              ],
              theme: ThemeData(
                // primarySwatch: Colors.blue,
                // fontFamily: 'Poppins',
                tabBarTheme: TabBarTheme(
                  overlayColor: WidgetStatePropertyAll(Colors.transparent),
                  labelColor: darkModeConsumer.isDark ? lightgrey : greycolor),
            dividerTheme: DividerThemeData(
              color: darkModeConsumer.isDark ? whitegrey.withOpacity(0.5) : dividercolor.withOpacity(0.5),
            ),

            scaffoldBackgroundColor:
                darkModeConsumer.isDark ? darkcolor : white,

            textTheme: GoogleFonts.cairoTextTheme(),
            colorScheme: ColorScheme.fromSeed(seedColor: bluegreen),
            useMaterial3: false, //true previous,
          ),

                // colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
                // useMaterial3: true,
          
              home: Search());
        }
      ),

    );

    // colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
    // useMaterial3: true,
  }
}
