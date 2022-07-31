import 'package:flutter/material.dart';

class DetailPhotos extends StatelessWidget {
  final String? imgUrl;
  const DetailPhotos({this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        image: DecorationImage(
          image: AssetImage(
            imgUrl!,
          ),
        ),
      ),
    );
  }
}
