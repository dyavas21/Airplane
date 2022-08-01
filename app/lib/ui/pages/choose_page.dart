import 'package:app/shared/theme.dart';
import 'package:app/ui/widgets/custom_avaible_seat.dart';
import 'package:app/ui/widgets/custom_button.dart';
import 'package:app/ui/widgets/custom_title_seat.dart';
import 'package:flutter/material.dart';

class ChoosePage extends StatelessWidget {
  const ChoosePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget text() {
      return Container(
        margin: EdgeInsets.only(
          top: 40,
        ),
        child: Text(
          'Select Your\nFavorite Seat',
          style: blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget seatStatus() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Row(
          children: [
            Expanded(
              child: Container(
                child: Row(
                  children: [
                    Container(
                      width: 16,
                      height: 16,
                      decoration: BoxDecoration(
                        border: Border.all(color: kPrimaryColor),
                        borderRadius: BorderRadius.circular(6),
                        color: kwhitePurple,
                      ),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      'Available',
                      style: blackTextStyle,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Row(
                  children: [
                    Container(
                      width: 16,
                      height: 16,
                      decoration: BoxDecoration(
                        border: Border.all(color: kPrimaryColor),
                        borderRadius: BorderRadius.circular(6),
                        color: kPrimaryColor,
                      ),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      'Selected',
                      style: blackTextStyle,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    width: 16,
                    height: 16,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: kInactiveColor,
                    ),
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    'Unavailable',
                    style: blackTextStyle,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget availableSeat() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.only(
          top: 30,
          left: 22,
          right: 22,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: kWhiteColor,
        ),
        child: Column(
          children: [
            Row(
              children: [
                //NOTE SEAT
                CustomTitleSeat(
                  title: 'A',
                ),
                CustomTitleSeat(title: 'B'),
                CustomTitleSeat(title: ''),
                CustomTitleSeat(title: 'C'),
                CustomTitleSeat(title: 'D'),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                CustomAvaibleSeat(
                  imgUrl: 'assets/icon_unavaible.png',
                  text: '',
                ),
                CustomAvaibleSeat(
                  imgUrl: 'assets/icon_unavaible.png',
                  text: '',
                ),
                CustomTitleSeat(title: '1'),
                CustomAvaibleSeat(
                  imgUrl: 'assets/icon_avaible.png',
                  text: '',
                ),
                CustomAvaibleSeat(
                  imgUrl: 'assets/icon_unavaible.png',
                  text: '',
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                CustomAvaibleSeat(
                  imgUrl: 'assets/icon_avaible.png',
                  text: '',
                ),
                CustomAvaibleSeat(
                  imgUrl: 'assets/icon_avaible.png',
                  text: '',
                ),
                CustomTitleSeat(title: '2'),
                CustomAvaibleSeat(
                  imgUrl: 'assets/icon_avaible.png',
                  text: '',
                ),
                CustomAvaibleSeat(
                  imgUrl: 'assets/icon_unavaible.png',
                  text: '',
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                CustomAvaibleSeat(
                  imgUrl: 'assets/icon_selected.png',
                  text: 'YOU',
                ),
                CustomAvaibleSeat(
                  imgUrl: 'assets/icon_selected.png',
                  text: 'YOU',
                ),
                CustomTitleSeat(title: '3'),
                CustomAvaibleSeat(
                  imgUrl: 'assets/icon_avaible.png',
                  text: '',
                ),
                CustomAvaibleSeat(
                  imgUrl: 'assets/icon_avaible.png',
                  text: '',
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                CustomAvaibleSeat(
                  imgUrl: 'assets/icon_avaible.png',
                  text: '',
                ),
                CustomAvaibleSeat(
                  imgUrl: 'assets/icon_unavaible.png',
                  text: '',
                ),
                CustomTitleSeat(title: '3'),
                CustomAvaibleSeat(
                  imgUrl: 'assets/icon_avaible.png',
                  text: '',
                ),
                CustomAvaibleSeat(
                  imgUrl: 'assets/icon_avaible.png',
                  text: '',
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                CustomAvaibleSeat(
                  imgUrl: 'assets/icon_avaible.png',
                  text: '',
                ),
                CustomAvaibleSeat(
                  imgUrl: 'assets/icon_avaible.png',
                  text: '',
                ),
                CustomTitleSeat(title: '3'),
                CustomAvaibleSeat(
                  imgUrl: 'assets/icon_unavaible.png',
                  text: '',
                ),
                CustomAvaibleSeat(
                  imgUrl: 'assets/icon_avaible.png',
                  text: '',
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Your seat',
                    style: greyTextStyle.copyWith(
                      fontWeight: light,
                    ),
                  ),
                ),
                Text(
                  'A3, B3',
                  style:
                      blackTextStyle.copyWith(fontWeight: medium, fontSize: 16),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Total',
                    style: greyTextStyle.copyWith(
                      overflow: TextOverflow.ellipsis,
                      fontWeight: light,
                    ),
                  ),
                ),
                Text(
                  'IDR 540.000.000',
                  style: purpleTextStyle.copyWith(
                    overflow: TextOverflow.ellipsis,
                    fontWeight: semiBold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        padding: EdgeInsets.only(
          left: 24,
          right: 24,
        ),
        children: [
          text(),
          seatStatus(),
          availableSeat(),
          SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/checkout');
            },
            child: CustomButton(
              customMargin: 0,
              description: 'Continue to Checkout',
            ),
          ),
        ],
      ),
    );
  }
}
