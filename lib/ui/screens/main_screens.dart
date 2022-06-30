import 'package:flight_guh_02/ui/screens/home_screen.dart';
import 'package:flight_guh_02/ui/screens/transaction_screens.dart';
import 'package:flight_guh_02/ui/screens/wallet_screens.dart';
import 'package:flight_guh_02/ui/widgets/custom_bottom_navigation_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../shared/theme.dart';

class MainScreens extends StatelessWidget {
  const MainScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /** * HIDE system overlay android on bottom */
    // SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);
    // SystemChrome.setSystemUIOverlayStyle(
    //     SystemUiOverlayStyle(statusBarColor: kTransparentColor));

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(children: [buildContent(), customBottomNavigation()]),
    );
  }
}

Widget buildContent() {
  return HomeScreen();
}

Widget customBottomNavigation() {
  return Align(
    alignment: Alignment.bottomCenter,
    child: Container(
      width: double.infinity,
      margin: EdgeInsets.only(
          bottom: 30, left: defaultMargin, right: defaultMargin),
      height: 60,
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(defaultRadius),
        boxShadow: [
          BoxShadow(
            color: kGreyColor.withOpacity(0.25),
            spreadRadius: 3.5,
            blurRadius: 5,
            offset: Offset(0, 5), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          /*NAVIGATION ITEM BAR HOME*/
          CustomBottomNavigationItem(
            imageUrl: 'assets/icon_home.png',
            isSelected: true,
          ),

          /*NAVIGATION ITEM BAR BOOKING*/
          CustomBottomNavigationItem(imageUrl: 'assets/icon_booking.png'),
          /*NAVIGATION ITEM BAR card*/
          CustomBottomNavigationItem(imageUrl: 'assets/icon_card.png'),
          /*NAVIGATION ITEM BAR SETTINGS*/
          CustomBottomNavigationItem(imageUrl: 'assets/icon_settings.png'),
        ],
      ),
    ),
  );
}
