import 'package:app/shared/theme.dart';
import 'package:app/ui/widgets/destination_card.dart';
import 'package:app/ui/widgets/this_year_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Padding(
        padding: const EdgeInsets.only(
          left: 24,
          right: 24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Howdy,\nKezia Anne',
                    style: blackTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: semiBold,
                    ),
                  ),
                ),
                CircleAvatar(
                  backgroundColor: kWhiteColor,
                  radius: 30,
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('assets/profile.png'),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              'Where to fly today?',
              style: greyTextStyle.copyWith(
                fontSize: 16,
                fontWeight: light,
              ),
            ),
          ],
        ),
      );
    }

    Widget destination() {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            DestinationCard(
              imgUrl: 'assets/destination1.png',
              title: 'Lake Ciliwung',
              star: '4.8',
              desc: 'Tangerang',
            ),
            DestinationCard(
              imgUrl: 'assets/destination2.png',
              title: 'White Houses',
              star: '4.7',
              desc: 'Spain',
            ),
            DestinationCard(
              imgUrl: 'assets/destination3.png',
              title: 'Hill Heyo',
              star: '4.8',
              desc: 'Monaco',
            ),
            DestinationCard(
              imgUrl: 'assets/destination4.png',
              title: 'Menarra',
              star: '5.0',
              desc: 'Japan',
            ),
            DestinationCard(
              imgUrl: 'assets/destination5.png',
              title: 'Payung Teduh',
              star: '4.8',
              desc: 'Singapore',
            ),
            SizedBox(
              width: 24,
            ),
          ],
        ),
      );
    }

    Widget moreDestination() {
      return Container(
        margin: EdgeInsets.only(
          left: 24,
          top: 30,
          right: 24,
          bottom: 100,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'New This Year',
              style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: semiBold,
              ),
            ),
            ThisYearCard(),
            ThisYearCard(),
            ThisYearCard(),
            ThisYearCard(),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        destination(),
        moreDestination(),
      ],
    );
  }
}
