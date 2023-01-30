import 'package:carousel_slider/carousel_slider.dart';
import 'package:collard_greens/AppRoot/widget/app_bar.dart';
import 'package:collard_greens/AppRoot/home/widget/card.dart';
import 'package:collard_greens/AppRoot/widget/drawer.dart';

import 'package:collard_greens/features/health/health.dart';
import 'package:collard_greens/features/realestate/realestate.dart';
import 'package:collard_greens/features/traveLinsurance/traveLinsurance.dart';
import 'package:flutter/material.dart';

import '../../features/CarInsurance/CarInsurance.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> images = [
      "assets/images/house.png",
      "assets/images/car.png",
      "assets/images/travel.png",
      "assets/images/health.png",
      "assets/images/devis.png"
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: CarouselSlider(
                items: images
                    .map((item) => Container(
                          height: 206,
                          width: 366,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50)),
                          child: Image.asset(
                            item,
                            fit: BoxFit.fill,
                            //width: 1000,
                          ),
                        ))
                    .toList(),
                options: CarouselOptions(
                  autoPlay: true,
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                ),
              ),
            ),
            SizedBox(height: 30),
            Wrap(
              spacing: 10,
              runSpacing: 15,
              children: const [
                InsuranceCard(
                  data: "Estate",
                  icon: Icons.home,
                  touch: RealEstate(),
                ),
                InsuranceCard(
                  data: "Vehicle",
                  icon: Icons.car_repair_rounded,
                  touch: CarInsurance(),
                )
              ],
            ),
            SizedBox(height: 15),
            Wrap(
              spacing: 10,
              runSpacing: 15,
              children: const [
                InsuranceCard(
                  data: "Travels",
                  icon: Icons.travel_explore,
                  touch: TraveLinsurance(),
                ),
                InsuranceCard(
                  data: "Health",
                  icon: Icons.health_and_safety_outlined,
                  touch: HealthInsurance(),
                )
              ],
            ),
          ],
        ),
      )),
    );
  }
}
