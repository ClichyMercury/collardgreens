import 'package:collard_greens/AppRoot/history/widget/scrollList.dart';
import 'package:flutter/material.dart';
import '../../ui/colors/app_colors.dart';

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    FocusNode searchNode = FocusNode();
    TextEditingController searchController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,

      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Container(
              height: 45.0,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: AppColors.mainGray,
                borderRadius: BorderRadius.circular(65.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 35,
                    margin: EdgeInsets.all(10),
                    width: 170.0,
                    child: TextField(
                      showCursor: true,
                      focusNode: searchNode,
                      textInputAction: TextInputAction.search,
                      autocorrect: false,
                      controller: searchController,
                      textAlignVertical: TextAlignVertical.center,
                      obscureText: false,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          enabled: true,
                          border: InputBorder.none,
                          hintStyle: TextStyle(fontSize: 15)),
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.search,
                      color: AppColors.mainGreen,
                    ),
                    onPressed: () {},
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 25.0),
                child: Text(
                  "Recently Used",
                  style: TextStyle(
                      color: AppColors.mainGreen,
                      fontSize: 25,
                      fontWeight: FontWeight.w800),
                ),
              ),
            ),
            Container(
              height: 130,
              child: Stack(children: [
                ListView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: [
                    ScrollList(data: "assets/images/NSIA.jpeg"),
                    SizedBox(width: 10),
                    ScrollList(data: "assets/images/gna.png"),
                    SizedBox(width: 10),
                    ScrollList(data: "assets/images/atlantique.jpg"),
                  ],
                )
              ]),
            ),
            SizedBox(height: 20),
            Container(
              height: 250,
              padding: EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/IMG_2135.PNG"))),
            )
          ],
        ),
      )),
    );
  }
}
