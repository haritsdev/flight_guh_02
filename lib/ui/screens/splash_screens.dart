import 'dart:async';

import 'package:flight_guh_02/ui/screens/get_started_screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../shared/theme.dart';

class SplashScreens extends StatefulWidget {
  const SplashScreens({Key? key}) : super(key: key);

  @override
  _SplashScreensState createState() => _SplashScreensState();
}

class _SplashScreensState extends State<SplashScreens> {
  @override
  void initState() {
    Timer(Duration(seconds: 3),
        () => Navigator.pushNamed(context, '/get-started'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    /** * HIDE system overlay android on bottom */
    // SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              margin: EdgeInsets.only(bottom: 40),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/icon_plane.png'))),
            ),
            Text(
              'AIRPLANE',
              style: whiteTextStyle.copyWith(
                  fontSize: 32, fontWeight: medium, letterSpacing: 10),
            )
          ],
        ),
      ),
    );
  }
}
