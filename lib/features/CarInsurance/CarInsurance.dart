import 'package:collard_greens/conponents/elevatedButton.dart';
import 'package:flutter/material.dart';

import '../../ui/colors/app_colors.dart';
import 'devis/devisForm.dart';

class CarInsurance extends StatelessWidget {
  const CarInsurance({super.key});

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
                Icons.add_task_rounded,
                color: AppColors.mainGreen,
              ))
        ],
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.all(25),
        child: Column(children: [
          Image.asset("assets/images/car.png"),
          Image.asset("assets/images/Screenshot_20230119-164223_2.png"),
          Image.asset("assets/images/Screenshot_20230119-164223.jpg"),
          Image.asset("assets/images/Screenshot_20230119-164350.jpg"),
          Image.asset("assets/images/Screenshot_20230120-094206.jpg"),
          SizedBox(height: 25),
          Mainbutton(
              onTap: (() { Navigator.push(context,
                MaterialPageRoute(builder: (builder) => const DevisCarForm()));}),
              text: "faire son devis",
              btnColor: AppColors.mainGreen)
        ]),
      )),
    );
  }
}
