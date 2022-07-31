import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class ThisYearCard extends StatelessWidget {
  final String? imgUrl;
  final String? title;
  final String? desc;
  final String? star;
  const ThisYearCard({this.desc, this.imgUrl, this.star, this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 10,
        top: 10,
        bottom: 10,
        right: 16,
      ),
      height: 90,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(
        top: 16,
      ),
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              image: DecorationImage(
                image: AssetImage(imgUrl!),
              ),
            ),
          ),
          SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title!,
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: medium,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  desc!,
                  style: greyTextStyle.copyWith(
                    fontWeight: light,
                  ),
                ),
              ],
            ),
          ),
          Image.asset(
            'assets/icon_star.png',
            width: 20,
          ),
          Text(
            star!,
            style: blackTextStyle.copyWith(
              fontWeight: medium,
            ),
          ),
        ],
      ),
    );
  }
}
