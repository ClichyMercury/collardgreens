import 'package:collard_greens/ui/colors/app_colors.dart';
import 'package:flutter/material.dart';

class InsuranceCard extends StatelessWidget {
  final IconData icon;
  final String data;
  final Widget touch;
  const InsuranceCard({
    super.key,
    required this.icon,
    required this.data,
    required this.touch
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => touch),
          );
        },
      child: Container(
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.all(5),
        height: 130,
        width: 130,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: AppColors.mainGreen),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.white,
              size: 55,
            ),
            Text(
              data,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
