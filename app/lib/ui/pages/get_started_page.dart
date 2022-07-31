import 'package:app/shared/theme.dart';
import 'package:flutter/material.dart';

class GetStartedPge extends StatelessWidget {
  const GetStartedPge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              'assets/airplane.png',
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Fly Like a Bird',
                  style: whiteTextStyle.copyWith(
                    fontSize: 32,
                    fontWeight: semiBold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Explore new world with us and let\nyourself get an amazing experiences',
                  style: greyTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: light,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 50,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/sign-up');
                  },
                  child: Container(
                    height: 55,
                    width: MediaQuery.of(context).size.width - 77 - 77,
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(defaultRadius),
                      ),
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
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
