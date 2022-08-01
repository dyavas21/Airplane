import 'dart:ui';

import 'package:app/shared/theme.dart';
import 'package:app/ui/widgets/custom_button.dart';
import 'package:app/ui/widgets/custom_checkout.dart';
import 'package:flutter/material.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        width: MediaQuery.of(context).size.width,
        height: 132,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/image_checkout.png',
            ),
          ),
        ),
      );
    }

    Widget content() {
      return Container(
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
          top: 30,
        ),
        margin: EdgeInsets.only(top: 30),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    image: DecorationImage(
                        image: AssetImage(
                          'assets/destination1.png',
                        ),
                        fit: BoxFit.fill),
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Lake Ciliwung',
                        style: blackTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: medium,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Tangerang',
                        style: greyTextStyle.copyWith(
                          fontWeight: light,
                        ),
                      ),
                    ],
                  ),
                ),
                Image.asset(
                  'assets/icon_star.png',
                  width: 24,
                ),
                SizedBox(
                  width: 3,
                ),
                Text(
                  '4.8',
                  style: blackTextStyle.copyWith(
                    fontWeight: medium,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Booking Details',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            CustomCheckout(
              title: 'Traveler',
              desc: '2 person',
              styleTul: blackTextStyle.copyWith(
                fontWeight: semiBold,
              ),
            ),
            CustomCheckout(
              title: 'Traveler',
              desc: 'A3, B3',
              styleTul: blackTextStyle.copyWith(
                fontWeight: semiBold,
              ),
            ),
            CustomCheckout(
              title: 'Traveler',
              desc: 'YES',
              styleTul: greenTextStyle.copyWith(
                fontWeight: semiBold,
              ),
            ),
            CustomCheckout(
              title: 'Traveler',
              desc: 'NO',
              styleTul: redTextStyle.copyWith(
                fontWeight: semiBold,
              ),
            ),
            CustomCheckout(
              title: 'Traveler',
              desc: '45%',
              styleTul: blackTextStyle.copyWith(
                fontWeight: semiBold,
              ),
            ),
            CustomCheckout(
              title: 'Traveler',
              desc: 'IDR 8.500.690',
              styleTul: blackTextStyle.copyWith(
                fontWeight: semiBold,
              ),
            ),
            CustomCheckout(
              title: 'Traveler',
              desc: 'IDR 12.000.000',
              styleTul: purpleTextStyle.copyWith(
                fontWeight: semiBold,
              ),
            ),
            SizedBox(
              height: 14,
            ),
          ],
        ),
      );
    }

    Widget payment() {
      return Container(
        width: MediaQuery.of(context).size.width,
        height: 170,
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.only(
          left: 20,
          top: 30,
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Payment Details',
              style: blackTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Container(
                  width: 100,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: kPrimaryColor,
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
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
                            fontWeight: medium,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'IDR 80.400.000',
                      style: blackTextStyle.copyWith(
                        fontWeight: medium,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Current Balance',
                      style: greyTextStyle.copyWith(
                        fontWeight: light,
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      );
    }

    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(
          left: 24,
          right: 24,
        ),
        children: [
          title(),
          content(),
          payment(),
          SizedBox(
            height: 30,
          ),
          CustomButton(
            description: 'Pay Now',
            customMargin: 0,
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: Text(
              'Terms and Conditions',
              style: greyTextStyle.copyWith(
                fontWeight: light,
                fontSize: 16,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
