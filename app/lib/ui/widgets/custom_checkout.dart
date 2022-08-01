import 'package:app/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomCheckout extends StatelessWidget {
  final String? title;
  final String? desc;
  final styleTul;

  const CustomCheckout({
    this.desc,
    this.title,
    this.styleTul,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          Image.asset(
            'assets/icon_check.png',
            width: 16,
          ),
          SizedBox(
            width: 6,
          ),
          Expanded(
            child: Text(
              title!,
              style: blackTextStyle,
            ),
          ),
          Text(
            desc!,
            style: styleTul!,
          ),
        ],
      ),
    );
  }
}
