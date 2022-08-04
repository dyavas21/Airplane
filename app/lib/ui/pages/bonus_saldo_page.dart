import 'package:app/shared/theme.dart';
import 'package:app/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BonusSaldoPage extends StatelessWidget {
  const BonusSaldoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.only(
              top: defaultMargin,
              left: defaultMargin,
              right: defaultMargin,
            ),
            margin: EdgeInsets.symmetric(horizontal: 38),
            width: MediaQuery.of(context).size.width,
            height: 211,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/box.png'),
                ),
                boxShadow: [
                  BoxShadow(
                    color: kPrimaryColor.withOpacity(0.5),
                    blurRadius: 50,
                    offset: Offset(0, 10),
                  )
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Name',
                            style: whiteTextStyle.copyWith(
                              fontWeight: light,
                            ),
                          ),
                          Text(
                            'Kezia Anne',
                            style: whiteTextStyle.copyWith(
                              fontSize: 20,
                              fontWeight: medium,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Image.asset(
                      'assets/logo.png',
                      width: 24,
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      'Pay',
                      style: whiteTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 41,
                ),
                Text(
                  'Balance',
                  style: whiteTextStyle.copyWith(
                    fontWeight: light,
                  ),
                ),
                Text(
                  'IDR 280.000.000',
                  style: whiteTextStyle.copyWith(
                    fontSize: 26,
                    fontWeight: medium,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 80,
          ),
          Text(
            'Big Bonus 🎉',
            style: blackTextStyle.copyWith(
              fontSize: 32,
              fontWeight: semiBold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'We give you early credit so that\nyou can buy a flight ticket',
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
              Navigator.pushNamedAndRemoveUntil(
                  context, '/main', (route) => false);
            },
            child: CustomButton(
              customMargin: 78,
              description: 'Start Fly Now',
            ),
          ),
        ],
      ),
    );
  }
}
