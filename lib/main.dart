import 'package:flight_guh_02/ui/screens/bonus_screens.dart';
import 'package:flight_guh_02/ui/screens/checkout_screens.dart';
import 'package:flight_guh_02/ui/screens/choose_seat_screens.dart';
import 'package:flight_guh_02/ui/screens/get_started_screens.dart';
import 'package:flight_guh_02/ui/screens/main_screens.dart';
import 'package:flight_guh_02/ui/screens/signup_screens.dart';
import 'package:flight_guh_02/ui/screens/splash_screens.dart';
import 'package:flight_guh_02/ui/screens/success_checkout_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'shared/theme.dart';

void main() async {
/**to avoid display orientation flutter */
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  /** * HIDE system overlay android on bottom */
  await SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: kTransparentColor));
  runApp(MyApp());
}

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
        '/choose-seat': (context) => ChooseSeat(),
        '/checkout': (context) => CheckoutScreen(),
        '/success-checkout': (context) => SuccessCheckoutScreen(),
        '/main': (context) => MainScreens(),
      },
    );
  }
}
