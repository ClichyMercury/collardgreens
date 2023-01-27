import 'package:flutter/material.dart';

import '../../../ui/colors/app_colors.dart';

class ScrollList extends StatelessWidget {
  const ScrollList({super.key, required this.data});

  final String data;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 125,
      width: 125,
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.mainGreen, width: 1),
          borderRadius: BorderRadius.circular(25),
          image: DecorationImage(image: AssetImage(data))),
    );
  }
}
