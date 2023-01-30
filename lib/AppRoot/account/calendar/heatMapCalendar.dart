import 'package:collard_greens/ui/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_heatmap_calendar/flutter_heatmap_calendar.dart';

class HeatMapcalendar extends StatelessWidget {
  const HeatMapcalendar({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        color: AppColors.bgGray,
        child: HeatMap(
          datasets: {
            DateTime(2023, 01, 03): 3,
            DateTime(2023, 01, 07): 7,
            DateTime(2023, 01, 30): 2,
            DateTime(2023, 01, 04): 5,
            DateTime(2023, 01, 11): 7,
            DateTime(2023, 01, 22): 9
          },
          startDate: DateTime(2023, 1, 1),
          endDate: DateTime.now().add(Duration(days: 26)),
          size: 30,
          textColor: AppColors.mainGreen,
          colorMode: ColorMode.opacity,
          showText: false,
          scrollable: true,
          colorsets: {
            1: Color.fromARGB(40, 2, 179, 8),
            2: Color.fromARGB(60, 2, 179, 8),
            3: Color.fromARGB(80, 2, 179, 8),
            4: Color.fromARGB(100, 2, 179, 8),
            5: Color.fromARGB(120, 2, 179, 8),
            6: Color.fromARGB(150, 2, 179, 8),
            7: Color.fromARGB(180, 2, 179, 8),
            8: Color.fromARGB(220, 2, 179, 8),
            9: Color.fromARGB(255, 2, 179, 8),
          },
        ),
      ),
    );
  }
}
