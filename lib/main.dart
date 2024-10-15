import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_in/screens/auth/forgot_password_screen.dart';
import 'package:travel_in/screens/auth/log_in_screen.dart';
import 'package:travel_in/screens/auth/new_password_screen.dart';
import 'package:travel_in/screens/auth/sign_up_screen.dart';
import 'package:travel_in/screens/main_screens/home_screen.dart';
import 'package:travel_in/screens/onboardings/onboarding1.dart';

void main() {
  runApp(MaterialApp(home: MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeScreen();
  }
}
