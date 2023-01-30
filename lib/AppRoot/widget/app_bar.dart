import 'package:flutter/material.dart';
import '../../features/profile/userPage.dart';
import '../../ui/colors/app_colors.dart';

AppBar buildAppBar(context) {
  return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      title: Image.asset(
        "assets/images/logo.jpg",
        height: 120,
        width: 120,
      ),
      centerTitle: true,
      actions: [
        IconButton(
          icon: const Icon(
            Icons.person,
            color: AppColors.mainGreen,
          ),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (builder) => const UserPage()));
          },
        )
      ]);
}
