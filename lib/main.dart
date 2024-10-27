import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:provider/provider.dart';
import 'package:travel_in/provider/authentication_provider.dart';
import 'package:travel_in/provider/base_provider.dart';
import 'package:travel_in/provider/resorts_provider.dart';

import 'package:travel_in/screens/auth/log_in_screen.dart';


void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    
    
    MultiProvider(
      providers: [
        ChangeNotifierProvider<BaseProvider>(create: (context) => BaseProvider()),
        ChangeNotifierProvider<AuthenticationProvider>(create:  (context) => AuthenticationProvider()), 
        ChangeNotifierProvider<ResortsProvider>(create:(context)=> ResortsProvider()..getResorts()), 
      ],
      child: MaterialApp(
        
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

          home: LogInScreen()),
    );

          // colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
          // useMaterial3: true,

  }
}
