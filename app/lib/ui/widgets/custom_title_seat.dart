import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class CustomTitleSeat extends StatelessWidget {
  final String? title;
  const CustomTitleSeat({this.title});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Center(
          child: Text(
            title!,
            style: greyTextStyle.copyWith(
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
