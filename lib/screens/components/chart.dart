import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:ticket_system/constants.dart';

class Chart extends StatelessWidget {
  
  const Chart({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          PieChart(
            PieChartData(
              startDegreeOffset: -90,
              sectionsSpace: 0,
              centerSpaceRadius: 70,
              sections: pieChartSectionDatas,
            ),
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: defaultPadding),
                Text(
                  "29.1",
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      ?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          height: 0.5),
                ),
                Text("of 128 GB")
              ],
            ),
          ),
        ],
      ),
    );
  }
}

List<PieChartSectionData> pieChartSectionDatas = [
      PieChartSectionData(
          value: 25, color: primaryColor, showTitle: false, radius: 25),
      PieChartSectionData(
          value: 20,
          color: const Color(0XFF26E5FF),
          showTitle: false,
          radius: 22),
      PieChartSectionData(
          value: 10,
          color: const Color(0XFFFFCF26),
          showTitle: false,
          radius: 19),
      PieChartSectionData(
          value: 15,
          color: const Color(0XFFEE2727),
          showTitle: false,
          radius: 16),
      PieChartSectionData(
          value: 15,
          color: primaryColor.withOpacity(0.1),
          showTitle: false,
          radius: 13),
    ];
