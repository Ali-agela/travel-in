import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_in/helper/constant.dart';
import 'package:travel_in/provider/dark_mode_provider.dart';
import 'package:travel_in/screens/main_screens/booking_screen.dart';
import 'package:travel_in/screens/main_screens/explore_screen.dart';
import 'package:travel_in/screens/main_screens/home_screen.dart';
import 'package:travel_in/screens/main_screens/profile/profile_screen.dart';
import 'package:travel_in/screens/main_screens/search_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MainNavigator extends StatefulWidget {
  const MainNavigator({super.key});

  @override
  State<MainNavigator> createState() => _MainNavigatorState();
}

class _MainNavigatorState extends State<MainNavigator> {
  int nowIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Consumer<DarkModeProvider>(builder: (context, darkModeConsumer, _) {
      return Scaffold(
        bottomNavigationBar: Directionality(
          textDirection: TextDirection.ltr,
          child: BottomNavigationBar(
              onTap: (currentIndex) {
                setState(() {
                  nowIndex = currentIndex;
                });
              },
              // selectedItemColor: bluegreen,
              // unselectedItemColor: bluegreen,
              // selectedLabelStyle: TextStyle(color: bluegreen),
              // unselectedLabelStyle: TextStyle(color: greytxt),
              selectedFontSize: 10,
              unselectedFontSize: 8,
              currentIndex: nowIndex,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.account_circle,
                    color: nowIndex == 0 ? blue1 : greytxt,
                  ),
                  label: AppLocalizations.of(context)!.myaccount,
                  backgroundColor: darkModeConsumer.isDark ? darkcolor : white,
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.calendar_month,
                    color: nowIndex == 1 ? blue1 : greytxt,
                  ),
                  label: AppLocalizations.of(context)!.book,
                  backgroundColor: darkModeConsumer.isDark ? darkcolor : white,
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    color: nowIndex == 2 ? blue1 : greytxt,
                  ),
                  label: AppLocalizations.of(context)!.main,
                  backgroundColor: darkModeConsumer.isDark ? darkcolor : white,
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.search,
                    color: nowIndex == 3 ? blue1 : greytxt,
                  ),
                  label: AppLocalizations.of(context)!.search,
                  backgroundColor: darkModeConsumer.isDark ? darkcolor : white,
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.explore,
                    color: nowIndex == 4 ? blue1 : greytxt,
                  ),
                  label: AppLocalizations.of(context)!.explore,
                  backgroundColor: darkModeConsumer.isDark ? darkcolor : white,
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
    });
  }
}
