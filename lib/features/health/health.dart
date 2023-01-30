import 'package:collard_greens/conponents/elevatedButton.dart';
import 'package:flutter/material.dart';

import '../../ui/colors/app_colors.dart';

class HealthInsurance extends StatelessWidget {
  const HealthInsurance({super.key});

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
                Icons.health_and_safety,
                color: AppColors.mainGreen,
              ))
        ],
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.all(25),
        child: Column(children: [
          Image.asset("assets/images/health.png"),
          Wrap(
            spacing: 10,
            runSpacing: 15,
            children: [
              Image.asset("assets/images/health1.png"),
              Image.asset("assets/images/health2.png"),
            ],
          ),
          Wrap(
            spacing: 10,
            runSpacing: 15,
            children: [
              Image.asset("assets/images/health3.png"),
              Image.asset("assets/images/health4.png"),
            ],
          ),
          Wrap(
            spacing: 10,
            runSpacing: 15,
            children: [
              Image.asset("assets/images/health5.png"),
              Image.asset("assets/images/health6.png"),
            ],
          ),
          SizedBox(height: 25),
          Mainbutton(
              onTap: (() {}),
              text: "faire son devis",
              btnColor: Colors.blue.shade700)
        ]),
      )),
    );
  }
}
