import 'package:airplane/cubit/page_cubit.dart';
import 'package:airplane/ui/screens/setting_screens.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../ui/screens/home_screen.dart';
import '../../ui/screens/transaction_screens.dart';
import '../../ui/screens/wallet_screens.dart';
import '../../ui/widgets/custom_bottom_navigation_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../shared/theme.dart';

class MainScreens extends StatelessWidget {
  const MainScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PageCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          backgroundColor: kBackgroundColor,
          body: Stack(
              children: [buildContent(currentIndex), customBottomNavigation()]),
        );
      },
    );
  }
}

Widget buildContent(int currentIndex) {
  switch (currentIndex) {
    case 0:
      return HomeScreen();
    case 1:
      return TransactionScreen();
    case 2:
      return WalletScreens();
    case 3:
      return SettingScreen();
    default:
      return HomeScreen();
  }
}

Widget customBottomNavigation() {
  return Align(
    alignment: Alignment.bottomCenter,
    child: Container(
      width: double.infinity,
      margin: EdgeInsets.only(
          bottom: 60, left: defaultMargin, right: defaultMargin),
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
            index: 0,
            imageUrl: 'assets/icon_home.png',
          ),

          /*NAVIGATION ITEM BAR BOOKING*/
          CustomBottomNavigationItem(
              index: 1, imageUrl: 'assets/icon_booking.png'),
          /*NAVIGATION ITEM BAR card*/
          CustomBottomNavigationItem(
              index: 2, imageUrl: 'assets/icon_card.png'),
          /*NAVIGATION ITEM BAR SETTINGS*/
          CustomBottomNavigationItem(
              index: 3, imageUrl: 'assets/icon_settings.png'),
        ],
      ),
    ),
  );
}
