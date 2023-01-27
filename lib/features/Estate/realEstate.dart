import 'package:flutter/material.dart';

import '../../ui/colors/app_colors.dart';

class RealEstate extends StatelessWidget {
  const RealEstate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: AppColors.mainGreen,
            )),
        title: Image.asset(
          "assets/images/logo.jpg",
          height: 120,
          width: 120,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.all(15),
        child: Column(children: []),
      )),
    );
  }
}
