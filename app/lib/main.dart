import 'package:app/cubit/auth_cubit.dart';
import 'package:app/cubit/page_cubit.dart';
import 'package:app/ui/pages/bonus_saldo_page.dart';
import 'package:app/ui/pages/checkout_page.dart';
import 'package:app/ui/pages/choose_page.dart';
import 'package:app/ui/pages/detail_page.dart';
import 'package:app/ui/pages/get_started_page.dart';
import 'package:app/ui/pages/main_page.dart';
import 'package:app/ui/pages/sign_in_page.dart';
import 'package:app/ui/pages/sign_up_page.dart';
import 'package:app/ui/pages/splash_page.dart';
import 'package:app/ui/pages/success_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => PageCubit()),
        BlocProvider(create: (context) => AuthCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/get-started': (context) => GetStartedPge(),
          '/sign-in': (context) => SignInPage(),
          '/sign-up': (context) => SignUpPage(),
          '/bonus': (context) => BonusSaldoPage(),
          '/main': (context) => MainPage(),
          '/detail': (context) => DetailPage(),
          '/choose': (context) => ChoosePage(),
          '/checkout': (context) => CheckoutPage(),
          '/success': (context) => SuccessPage(),
        },
      ),
    );
  }
}
