import 'package:app/ui/pages/bonus_saldo_page.dart';
import 'package:app/ui/pages/checkout_page.dart';
import 'package:app/ui/pages/choose_page.dart';
import 'package:app/ui/pages/detail_page.dart';
import 'package:app/ui/pages/get_started_page.dart';
import 'package:app/ui/pages/main_page.dart';
import 'package:app/ui/pages/sign_up_page.dart';
import 'package:app/ui/pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/get-started': (context) => GetStartedPge(),
        '/sign-up': (context) => SignUpPage(),
        '/bonus': (context) => BonusSaldoPage(),
        '/main': (context) => MainPage(),
        '/detail': (context) => DetailPage(),
        '/choose': (context) => ChoosePage(),
        '/checkout': (context) => CheckoutPage(),
      },
    );
  }
}
