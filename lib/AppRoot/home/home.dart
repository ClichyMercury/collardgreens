import 'package:carousel_slider/carousel_slider.dart';
import 'package:collard_greens/AppRoot/widget/app_bar.dart';
import 'package:collard_greens/AppRoot/home/widget/card.dart';
import 'package:collard_greens/AppRoot/widget/drawer.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> images = [
      "assets/images/auto.jpeg",
      "assets/images/maison.jpeg",
      "assets/images/microcredit.png",
      "assets/images/red reduct.jpeg",
      "assets/images/travel.webp"
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(context),
      drawer: const CustomDrawer(),
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
              children: [
                InsuranceCard(
                  data: "Estate",
                  icon: Icons.home,
                ),
                InsuranceCard(
                  data: "Vehicle",
                  icon: Icons.car_repair_rounded,
                )
              ],
            ),
            SizedBox(height: 15),
            Wrap(
              spacing: 10,
              runSpacing: 15,
              children: [
                InsuranceCard(
                  data: "Travels",
                  icon: Icons.travel_explore,
                ),
                InsuranceCard(
                  data: "People",
                  icon: Icons.people,
                )
              ],
            ),
          ],
        ),
      )),
    );
  }
}
