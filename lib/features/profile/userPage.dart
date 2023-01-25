import 'package:collard_greens/features/profile/widget/options.dart';
import 'package:collard_greens/ui/colors/app_colors.dart';
import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: AppColors.mainGreen),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.logout, color: AppColors.mainGreen))
        ],
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 130,
                  width: 130,
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/rdj.jpeg"),
                    radius: 100,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  height: 90,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Robert Downey JR",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                            color: AppColors.mainGreen),
                      ),
                      Text(
                        "robertdowney@outlook.com",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColors.mainGreen),
                      ),
                      Text(
                        "+225 07 68 70 73 74",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: AppColors.mainGreen),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: 420,
              padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OptionsProfile(
                      icon: Icons.person, data: "Personal Informations"),
                  OptionsProfile(icon: Icons.feed, data: "Documents"),
                  OptionsProfile(
                      icon: Icons.key, data: "use touch ID or face ID"),
                  OptionsProfile(icon: Icons.settings, data: "Settings"),
                  OptionsProfile(icon: Icons.info_outline, data: "About Us"),
                ],
              ),
            ),
            Image.asset(
              "assets/images/logo.jpg",
              height: 120,
            )
          ],
        ),
      )),
    );
  }
}
