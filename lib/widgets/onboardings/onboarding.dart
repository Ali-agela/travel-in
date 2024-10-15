import 'package:flutter/material.dart';
import 'package:travel_in/helper/size.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key, required this.imageName, required this.child, this.bottomDistance=80});
  final String imageName;
  final Widget child;
  final double bottomDistance ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Image.asset(
        "assets/onboarding/$imageName",
        height: double.infinity,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
      Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.transparent,
              const Color(0xFF040404).withOpacity(0.6)
            ],
            begin: const Alignment(0.00, -1.00),
            end: const Alignment(0, 1),
          ),
        ),
      ),
      Positioned(
        bottom: bottomDistance,
        right: 0,
        left: 0,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: child,
        ),
      )
    ]));
  }
}
