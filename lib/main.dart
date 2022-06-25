import 'package:flight_guh_02/ui/screens/bonus_screens.dart';
import 'package:flight_guh_02/ui/screens/get_started_screens.dart';
import 'package:flight_guh_02/ui/screens/main_screens.dart';
import 'package:flight_guh_02/ui/screens/signup_screens.dart';
import 'package:flight_guh_02/ui/screens/splash_screens.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashScreens(),
        '/get-started': (context) => GetStartedScreens(),
        '/sign-up': (context) => SignUpScreens(),
        '/bonus': (context) => BonusScreens(),
        '/main': (context) => MainScreens(),
      },
    );
  }
}
