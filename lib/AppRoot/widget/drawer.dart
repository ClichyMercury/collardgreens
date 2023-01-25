
import 'package:flutter/material.dart';




import '../../ui/colors/app_colors.dart';
import '../../ui/svg_icons/svg_icons.dart';

class CustomDrawer extends StatefulWidget {

  const CustomDrawer({Key? key, }) : super(key: key);

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
                  children: [
                    const SizedBox(height: 20),
                    const DrawerItem(
                      text: "Week challenges",
                      icon: SvgIcons.calendarWeek,
                    ),
                    const SizedBox(height: 20),
                    const DrawerItem(
                      text: "My Ranking",
                      icon: SvgIcons.rankingStar,
                    ),
                    const SizedBox(height: 20),
                    const DrawerItem(
                      text: "My Calendar & Meets ",
                      icon: SvgIcons.calendar,
                    ),
                    const SizedBox(height: 40),
                    //Logout
                    Material(
                      color: Colors.transparent,
                      child: GestureDetector(
                        onTap: (() {}),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.logout),
                            SizedBox(width: 10),
                            Expanded(
                              child: Text(
                                "Logout",
                                style: TextStyle(color: AppColors.mainWhite),
                                overflow: TextOverflow.ellipsis,
                              ),
                            )
                          ],
                        ),
                      ),
                    )
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
  final SvgIcons icon;
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
        SvgIcon(
          icon: icon,
          color: AppColors.mainWhite,
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
