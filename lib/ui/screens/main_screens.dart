import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../shared/theme.dart';

class MainScreens extends StatelessWidget {
  const MainScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /** * HIDE system overlay android on bottom */
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(children: [Text('Main Page'), customBottomNavigation()]),
    );
  }
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
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(),
              Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/icon_home.png'))),
              ),
              Container(
                width: 30,
                height: 2,
                decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(defaultMargin)),
              )
            ],
          ),

          /*NAVIGATION ITEM BAR BOOKING*/
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(),
              Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/icon_booking.png'))),
              ),
              Container(
                width: 30,
                height: 2,
                decoration: BoxDecoration(
                    color: kTransparentColor,
                    borderRadius: BorderRadius.circular(defaultMargin)),
              )
            ],
          ),

          /*NAVIGATION ITEM BAR card*/
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(),
              Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/icon_card.png'))),
              ),
              Container(
                width: 30,
                height: 2,
                decoration: BoxDecoration(
                    color: kTransparentColor,
                    borderRadius: BorderRadius.circular(defaultMargin)),
              )
            ],
          ),

          /*NAVIGATION ITEM BAR SETTINGS*/
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(),
              Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/icon_settings.png'))),
              ),
              Container(
                width: 30,
                height: 2,
                decoration: BoxDecoration(
                    color: kTransparentColor,
                    borderRadius: BorderRadius.circular(defaultMargin)),
              )
            ],
          )
        ],
      ),
    ),
  );
}
