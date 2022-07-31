import 'package:flutter/material.dart';

class InterestItem extends StatelessWidget {
  final String? title;
  const InterestItem({this.title});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Container(
            width: 16,
            height: 16,
            margin: EdgeInsets.only(right: 6),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/icon_check.png',
                ),
              ),
            ),
          ),
          Text(
            title!,
          ),
        ],
      ),
    );
  }
}
