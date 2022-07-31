import 'package:app/shared/theme.dart';
import 'package:app/ui/pages/home_page.dart';
import 'package:app/ui/widgets/custom_bottom_navigation_item.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget bottomNavigationBar() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          padding: EdgeInsets.only(
            left: 29,
            right: 29,
            top: 13,
          ),
          margin: EdgeInsets.only(
            left: defaultMargin,
            right: defaultMargin,
            bottom: 30,
          ),
          width: MediaQuery.of(context).size.width,
          height: 60,
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomBottomNavigationItem(
                imgUrl: 'assets/icon_home.png',
                isSelected: true,
              ),
              CustomBottomNavigationItem(
                imgUrl: 'assets/icon_book.png',
                isSelected: false,
              ),
              CustomBottomNavigationItem(
                imgUrl: 'assets/icon_card.png',
                isSelected: false,
              ),
              CustomBottomNavigationItem(
                imgUrl: 'assets/icon_setting.png',
                isSelected: false,
              ),
            ],
          ),
        ),
      );
    }

    Widget BuildContent() {
      return HomePage();
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          BuildContent(),
          bottomNavigationBar(),
        ],
      ),
    );
  }
}
