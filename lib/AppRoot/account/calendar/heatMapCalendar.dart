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
            1: Color.fromARGB(10, 10, 85, 92),
            2: Color.fromARGB(50, 10, 85, 92),
            3: Color.fromARGB(80, 10, 85, 92),
            4: Color.fromARGB(120, 10, 85, 92),
            5: Color.fromARGB(160, 10, 85, 92),
            6: Color.fromARGB(180, 10, 85, 92),
            7: Color.fromARGB(200, 10, 85, 92),
            8: Color.fromARGB(230, 10, 85, 92),
            9: Color.fromARGB(255, 10, 85, 92),
          },
        ),
      ),
    );
  }
}
