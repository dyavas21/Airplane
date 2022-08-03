import 'package:app/shared/theme.dart';
import 'package:app/ui/pages/home_page.dart';
import 'package:app/ui/pages/main_page.dart';
import 'package:app/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        width: MediaQuery.of(context).size.width,
        height: 150,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/image_success.png',
            ),
          ),
        ),
      );
    }

    Widget content() {
      return Container(
        margin: EdgeInsets.only(top: 80),
        child: Column(
          children: [
            Text(
              'Well Booked 😍',
              style: blackTextStyle.copyWith(
                fontSize: 32,
                fontWeight: semiBold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Are you ready to explore the new\nworld of experiences?',
              style: greyTextStyle.copyWith(
                fontSize: 16,
                fontWeight: light,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      );
    }

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          title(),
          content(),
          SizedBox(
            height: 64,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MainPage()));
            },
            child: CustomButton(
              description: 'My Bookings',
              customMargin: 78,
            ),
          ),
        ],
      ),
    );
  }
}
