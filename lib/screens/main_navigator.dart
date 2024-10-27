import 'package:flutter/material.dart';
import 'package:travel_in/screens/main_screens/booking_screen.dart';
import 'package:travel_in/screens/main_screens/home_screen.dart';
import 'package:travel_in/screens/main_screens/profile/profile_screen.dart';
import 'package:travel_in/screens/main_screens/search_screen.dart';

class MainNavigator extends StatefulWidget {
  const MainNavigator({super.key});

  @override
  State<MainNavigator> createState() => _MainNavigatorState();
}

class _MainNavigatorState extends State<MainNavigator> {
  int nowIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Directionality(
        textDirection: TextDirection.ltr,
        child: BottomNavigationBar(
            onTap: (currentIndex) {
              setState(() {
                nowIndex = currentIndex;
              });
            },
            selectedItemColor: Colors.blue,
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icons/profile.png',
                  height: 24,
                  width: 24,
                ),
                label: 'حسابي',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icons/booked.png',
                  height: 24,
                  width: 24,
                ),
                label: 'حجوزات',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icons/home.png',
                  height: 24,
                  width: 24,
                ),
                label: 'الرئيسية',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icons/search.png',
                  height: 24,
                  width: 24,
                ),
                label: 'بحث',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icons/explore.png',
                  height: 24,
                  width: 24,
                ),
                label: 'اكتشف',
              ),
            ]),
      ),
      body: nowIndex == 0
          ? ProfileScreen()
          : nowIndex == 1
              ? BookingScreen()
              : nowIndex == 2
                  ? HomeScreen()
                  : nowIndex == 3
                      ? SearchScreen()
                      : nowIndex == 4
                          ? Center(
                              child: Text("Explore Screen"),
                            )
                          : Container(),
    );
  }
}
