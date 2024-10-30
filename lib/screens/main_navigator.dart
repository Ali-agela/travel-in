import 'package:flutter/material.dart';
import 'package:travel_in/helper/constant.dart';
import 'package:travel_in/screens/main_screens/booking_screen.dart';
import 'package:travel_in/screens/main_screens/explore_screen.dart';
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
            selectedFontSize: 10,
            unselectedFontSize: 0,
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_circle,
                  color: nowIndex == 0 ? blue1 : greytxt,
                ),
                label: 'حسابي',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.calendar_month,
                  color: nowIndex == 1 ? blue1 : greytxt,
                ),
                label: 'حجوزات',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: nowIndex == 2 ? blue1 : greytxt,
                ),
                label: 'الرئيسية',
              ),
              BottomNavigationBarItem(
                icon:
                    Icon(Icons.search, color: nowIndex == 3 ? blue1 : greytxt),
                label: 'بحث',
              ),
              BottomNavigationBarItem(
                icon:
                    Icon(Icons.explore, color: nowIndex == 4 ? blue1 : greytxt),
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
                          ? ExploreScreen()
                          : Container(),
    );
  }
}
