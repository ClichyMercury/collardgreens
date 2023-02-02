import 'package:collard_greens/AppRoot/widget/app_bar_pop.dart';
import 'package:flutter/material.dart';

import '../../../ui/colors/app_colors.dart';

class DevisCarForm extends StatefulWidget {
  const DevisCarForm({super.key});

  @override
  State<DevisCarForm> createState() => _DevisCarFormState();
}

class _DevisCarFormState extends State<DevisCarForm> {
  String gender = "Small car";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBarPop(context),
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.all(25),
        child: Column(
          children: [
            Image.asset("assets/images/car.png"),
            SizedBox(height: 20),
            Text(
              "Choose your type of car",
              style: TextStyle(
                  color: AppColors.mainGreen,
                  fontSize: 20,
                  fontWeight: FontWeight.w800),
            ),
            Column(children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                      child: Radio(
                        value: 'Small car',
                        groupValue: gender,
                        activeColor: Colors.orange,
                        onChanged: (value) {
                          //value may be true or false
                          setState(() {
                            gender = value!;
                          });
                        },
                      ),
                    ),
                    SizedBox(width: 20.0),
                    Text(
                      'Small car',
                      style: TextStyle(
                          color: AppColors.mainGreen,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Image.asset("assets/images/small car.PNG")
              ]),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                      child: Radio(
                        value: 'Sedan',
                        groupValue: gender,
                        activeColor: Colors.orange,
                        onChanged: (value) {
                          //value may be true or false
                          setState(() {
                            gender = value!;
                          });
                        },
                      ),
                    ),
                    SizedBox(width: 20.0),
                    Text(
                      'Sedan',
                      style: TextStyle(
                          color: AppColors.mainGreen,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Image.asset("assets/images/sedan car.PNG")
              ]),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                      child: Radio(
                        value: 'Famillial',
                        groupValue: gender,
                        activeColor: Colors.orange,
                        onChanged: (value) {
                          //value may be true or false
                          setState(() {
                            gender = value!;
                          });
                        },
                      ),
                    ),
                    SizedBox(width: 20.0),
                    Text(
                      'Famillial',
                      style: TextStyle(
                          color: AppColors.mainGreen,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Image.asset("assets/images/famillial.PNG"),
              ]),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                      child: Radio(
                        value: 'off-Road',
                        groupValue: gender,
                        activeColor: Colors.orange,
                        onChanged: (value) {
                          //value may be true or false
                          setState(() {
                            gender = value!;
                          });
                        },
                      ),
                    ),
                    SizedBox(width: 20.0),
                    Text(
                      'off-Road',
                      style: TextStyle(
                          color: AppColors.mainGreen,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Image.asset("assets/images/off road.PNG"),
              ]),
            ]),
          ],
        ),
      )),
    );
  }
}
