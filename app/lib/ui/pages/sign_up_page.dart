import 'package:app/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(
          left: 24,
          bottom: 30,
        ),
        child: Text(
          'Join us and get\nyour next journey',
          style: blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget input() {
      Widget fullName() {
        return TextFormField(
          cursorColor: kBlackColor,
          decoration: InputDecoration(
            hintText: 'Your full name',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(defaultRadius),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(defaultRadius),
              borderSide: BorderSide(
                color: kPrimaryColor,
              ),
            ),
          ),
        );
      }

      Widget emailAddress() {
        return TextFormField(
          cursorColor: kBlackColor,
          decoration: InputDecoration(
            hintText: 'Your email address',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(defaultRadius),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(defaultRadius),
              borderSide: BorderSide(
                color: kPrimaryColor,
              ),
            ),
          ),
        );
      }

      Widget password() {
        return TextFormField(
          obscureText: true,
          cursorColor: kBlackColor,
          decoration: InputDecoration(
            hintText: 'Your password',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(defaultRadius),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(defaultRadius),
              borderSide: BorderSide(
                color: kPrimaryColor,
              ),
            ),
          ),
        );
      }

      Widget hobby() {
        return TextFormField(
          cursorColor: kBlackColor,
          decoration: InputDecoration(
            hintText: 'Your hobby',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(defaultRadius),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(defaultRadius),
              borderSide: BorderSide(
                color: kPrimaryColor,
              ),
            ),
          ),
        );
      }

      return Container(
        margin: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
          vertical: 30,
        ),
        decoration: BoxDecoration(
            color: kWhiteColor, borderRadius: BorderRadius.circular(18)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Full Name',
              style: blackTextStyle,
            ),
            SizedBox(
              height: 6,
            ),
            fullName(),
            SizedBox(
              height: 20,
            ),
            Text(
              'Email Address',
              style: blackTextStyle,
            ),
            SizedBox(
              height: 6,
            ),
            emailAddress(),
            SizedBox(
              height: 20,
            ),
            Text(
              'Password',
              style: blackTextStyle,
            ),
            SizedBox(
              height: 6,
            ),
            password(),
            SizedBox(
              height: 20,
            ),
            Text(
              'Hobby',
              style: blackTextStyle,
            ),
            SizedBox(
              height: 6,
            ),
            hobby(),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 55,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(defaultRadius),
              ),
              child: Center(
                child: Text(
                  'Get Started',
                  style: whiteTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: medium,
                  ),
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget footer() {
      return Center(
        child: Text(
          'Terms and Conditions',
          style: greyTextStyle.copyWith(
            fontSize: 16,
            fontWeight: light,
            decoration: TextDecoration.underline,
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        children: [
          title(),
          input(),
          SizedBox(
            height: 50,
          ),
          footer(),
        ],
      ),
    );
  }
}
