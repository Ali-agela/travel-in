import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:travel_in/screens/details_screen/booking_details_screen.dart';
import 'package:travel_in/screens/details_screen/offer_detail_screen.dart';
import 'package:travel_in/screens/main_screens/booking_screen.dart';
import 'package:travel_in/screens/main_screens/search_screen.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        locale: Locale("ar"),
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('en'), // English
          Locale('es'), // Spanish
          Locale('ar'), // arabic
        ],
        theme: ThemeData(
          // primarySwatch: Colors.blue,
          // fontFamily: 'Poppins',
          tabBarTheme: TabBarTheme(
            overlayColor: WidgetStatePropertyAll(Colors.transparent),
          ),

          // colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
          // useMaterial3: true,
        ),
        home: SearchScreen());
  }
}
