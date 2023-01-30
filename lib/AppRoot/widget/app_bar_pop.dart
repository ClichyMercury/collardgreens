import 'package:flutter/material.dart';
import '../../ui/colors/app_colors.dart';

AppBar buildAppBarPop(context) {
  return AppBar(
    elevation: 0.0,
    backgroundColor: Colors.white,
    leading: IconButton(
      icon: const Icon(Icons.arrow_back_ios, color: AppColors.mainGreen),
      onPressed: () {
        Navigator.of(context).pop();
      },
    ),
  );
}
