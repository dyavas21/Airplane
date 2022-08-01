import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class CustomAvaibleSeat extends StatelessWidget {
  final String? imgUrl;
  final String? text;
  const CustomAvaibleSeat({this.imgUrl, this.text});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imgUrl!),
            ),
            borderRadius: BorderRadius.circular(18),
          ),
          child: Center(
            child: Text(
              text!,
              style: whiteTextStyle.copyWith(
                fontWeight: semiBold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
