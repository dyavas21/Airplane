import 'dart:async';

import 'package:app/shared/theme.dart';
import 'package:app/ui/pages/get_started_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});
  // const SplashPage({Key? key}) : super(key: key);
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), (() {
      Navigator.pushNamed(context, '/get-started');
    }));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo.png',
              width: 100,
              height: 100,
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'AIRPLANE',
              style: whiteTextStyle.copyWith(
                fontWeight: medium,
                fontSize: 32,
                letterSpacing: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
