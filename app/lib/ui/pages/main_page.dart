import 'package:app/cubit/page_cubit.dart';
import 'package:app/shared/theme.dart';
import 'package:app/ui/pages/home_page.dart';
import 'package:app/ui/pages/setting_page.dart';
import 'package:app/ui/pages/transaction_page.dart';
import 'package:app/ui/pages/wallet_page.dart';
import 'package:app/ui/widgets/custom_bottom_navigation_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
                index: 0,
                imgUrl: 'assets/icon_home.png',
              ),
              CustomBottomNavigationItem(
                index: 1,
                imgUrl: 'assets/icon_book.png',
              ),
              CustomBottomNavigationItem(
                index: 2,
                imgUrl: 'assets/icon_card.png',
              ),
              CustomBottomNavigationItem(
                index: 3,
                imgUrl: 'assets/icon_setting.png',
              ),
            ],
          ),
        ),
      );
    }

    Widget BuildContent(int currentIndex) {
      switch (currentIndex) {
        case 0:
          return HomePage();
        case 1:
          return TransactionPage();
        case 2:
          return WalletPage();
        case 3:
          return SettingPage();
        default:
          return HomePage();
      }
    }

    return BlocBuilder<PageCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          backgroundColor: kBackgroundColor,
          body: Stack(
            children: [
              BuildContent(currentIndex),
              bottomNavigationBar(),
            ],
          ),
        );
      },
    );
  }
}
