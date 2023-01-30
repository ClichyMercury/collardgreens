import 'package:collard_greens/AppRoot/account/AccountCard.dart';
import 'package:collard_greens/AppRoot/history/history.dart';
import 'package:collard_greens/AppRoot/home/home.dart';
import 'package:collard_greens/AppRoot/widget/app_bar.dart';
import 'package:collard_greens/AppRoot/widget/drawer.dart';
import 'package:flutter/material.dart';

import '../ui/colors/app_colors.dart';

class Root extends StatefulWidget {
  const Root({super.key});

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  int curID = 0;
  void _setIndex(int index) {
    setState(() {
      curID = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screens = [const Home(), const History(), const AccountCard()];

    return Scaffold(
        appBar: buildAppBar(context),
        drawer: const CustomDrawer(),
        body: IndexedStack(
          index: curID,
          children: screens,
        ),
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: AppColors.mainGreen,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white70,
            currentIndex: curID,
            onTap: _setIndex,
            iconSize: 35,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.category_rounded),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.bar_chart),
                label: "History",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_balance_wallet_rounded),
                label: "Account",
              ),
            ]));
  }
}
