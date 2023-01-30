import 'package:collard_greens/conponents/elevatedButton.dart';
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
        actions: [
          IconButton(
              onPressed: (() {}),
              icon: Icon(
                Icons.add_home,
                color: AppColors.mainGreen,
              ))
        ],
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.all(25),
        child: Column(children: [
          Image.asset("assets/images/house.png"),
          Image.asset("assets/images/house1.png"),
          Image.asset("assets/images/house2.png"),
          Image.asset("assets/images/house3.png"),
          SizedBox(height: 25),
          Mainbutton(
              onTap: (() {}),
              text: "faire son devis",
              btnColor: Colors.blue.shade900)
        ]),
      )),
    );
  }
}
