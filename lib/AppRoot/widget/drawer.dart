import 'package:flutter/material.dart';

import '../../ui/colors/app_colors.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({
    Key? key,
  }) : super(key: key);

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      color: AppColors.mainGreen,
      width: size.width * 0.8,
      height: size.height,
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  children: const [
                    SizedBox(height: 50),
                    Text(
                      "Welcome to best app of insurance of west africa",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    SizedBox(height: 50),
                    DrawerItem(
                      text: "Meeting",
                      icon: Icons.calendar_view_week,
                    ),
                    SizedBox(height: 20),
                    DrawerItem(
                      text: "Rating",
                      icon: Icons.star,
                    ),
                    SizedBox(height: 20),
                    DrawerItem(
                      text: "Share",
                      icon: Icons.share,
                    ),
                    SizedBox(height: 20),
                    DrawerItem(
                      text: "more apps",
                      icon: Icons.apps_outlined,
                    ),
                    SizedBox(height: 40),
                    //Logout
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  //
  //:separated method to access context
  void navigateTo(Widget page) {
    Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(builder: (context) => page), (route) => false);
  }
}

class DrawerItem extends StatelessWidget {
  final String text;
  final IconData icon;
  const DrawerItem({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.white,
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Text(
            text,
            style: const TextStyle(color: AppColors.mainWhite),
            overflow: TextOverflow.ellipsis,
          ),
        )
      ],
    );
  }
}
