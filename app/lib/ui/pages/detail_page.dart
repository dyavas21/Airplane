import 'package:app/shared/theme.dart';
import 'package:app/ui/widgets/detail_photos.dart';
import 'package:app/ui/widgets/interest_item.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  Widget image() {
    return Container(
      padding: EdgeInsets.only(
        top: 50,
        bottom: 80,
        left: 24,
        right: 24,
      ),
      width: double.infinity,
      height: 450,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              'assets/detail_page.png',
            ),
            fit: BoxFit.cover),
      ),
    );
  }

  Widget content() {
    return Container(
      margin: EdgeInsets.only(top: 40),
      child: Column(
        children: [
          Image.asset(
            'assets/icon_emblem.png',
            width: double.infinity,
            height: 24,
          ),
          Container(
            margin: EdgeInsets.only(
              top: 256,
              left: 24,
              right: 24,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Lake Ciliwung',
                        style: whiteTextStyle.copyWith(
                          fontSize: 24,
                          fontWeight: semiBold,
                        ),
                      ),
                      Text(
                        'Tangerang',
                        style: whiteTextStyle.copyWith(
                          fontSize: 16,
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
                  width: 4,
                ),
                Text(
                  '4.8',
                  style: whiteTextStyle.copyWith(
                    fontWeight: medium,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 30,
              left: 24,
              right: 24,
            ),
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
              top: 30,
            ),
            width: double.infinity,
            decoration: BoxDecoration(
              color: kWhiteColor,
              borderRadius: BorderRadius.circular(18),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'About',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  'Berada di jalur jalan provinsi yang menghubungkan Denpasar\nSingaraja serta letaknya yang dekat dengan Kebun Raya Eka Karya menjadikan tempat Bali.',
                  style: blackTextStyle.copyWith(),
                  textAlign: TextAlign.start,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Photos',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  children: [
                    DetailPhotos(
                      imgUrl: 'assets/detail_page1.png',
                    ),
                    DetailPhotos(
                      imgUrl: 'assets/detail_page2.png',
                    ),
                    DetailPhotos(
                      imgUrl: 'assets/detail_page3.png',
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Interests',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                ),
                SizedBox(
                  height: 13,
                ),
                Row(
                  children: [
                    InterestItem(
                      title: 'Kids Park',
                    ),
                    InterestItem(
                      title: 'Honor Bridge',
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    InterestItem(
                      title: 'City Museum',
                    ),
                    InterestItem(
                      title: 'Central Mall',
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              left: 24,
              right: 24,
            ),
            margin: EdgeInsets.only(
              top: 30,
              bottom: 30,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'IDR 2.500.000',
                        style: blackTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: medium,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'per orang',
                        style: greyTextStyle.copyWith(
                          fontWeight: light,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 55,
                  width: 170,
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Center(
                    child: Text(
                      'Book Now',
                      style: whiteTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: medium,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(
          children: [
            image(),
            content(),
          ],
        ),
      ),
    );
  }
}
