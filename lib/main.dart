import 'package:airplane/ui/screens/checkout_screens.dart';
import 'package:airplane/ui/screens/get_started_screens.dart';
import 'package:airplane/ui/screens/main_screens.dart';
import 'package:airplane/ui/screens/signin_screens.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/auth_cubit.dart';
import 'cubit/page_cubit.dart';
import 'shared/theme.dart';
import 'ui/screens/bonus_screens.dart';
import 'ui/screens/choose_seat_screens.dart';
import 'ui/screens/signup_screens.dart';
import 'ui/screens/splash_screens.dart';
import 'ui/screens/success_checkout_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PageCubit(),
        ),
        BlocProvider(create: (context) => AuthCubit())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashScreens(),
          '/get-started': (context) => GetStartedScreens(),
          '/sign-up': (context) => SignUpScreens(),
          '/sign-in': (context) => SignInScreens(),
          '/bonus': (context) => BonusScreens(),
          '/choose-seat': (context) => ChooseSeat(),
          '/checkout': (context) => CheckoutScreen(),
          '/success-checkout': (context) => SuccessCheckoutScreen(),
          '/main': (context) => MainScreens(),
        },
      ),
    );
  }
}
