import 'dart:developer';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
  int currentIndex = -1;
  @override
  Widget build(BuildContext context) {
    log("${MediaQuery.of(context).size.width}");
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(getPieChartDat()),
    );
  }

  PieChartData getPieChartDat() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, pieTouchResponse) {
          currentIndex =
              pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          titlePositionPercentageOffset: currentIndex == 0 ? 1.5 : null,
          titleStyle: AppStyles.styleMedium16(context)
              .copyWith(color: currentIndex == 0 ? null : Colors.white),
          title: currentIndex == 0 ? 'Design service' : '40%',
          value: 40,
          color: Color(0xff208CC8),
          radius: currentIndex == 0 ? 60 : 50,
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: currentIndex == 1 ? 2.2 : null,
          titleStyle: AppStyles.styleMedium16(context)
              .copyWith(color: currentIndex == 1 ? null : Colors.white),
          title: currentIndex == 1 ? 'Design product' : '25%',
          value: 25,
          color: Color(0xff4EB7F2),
          radius: currentIndex == 1 ? 60 : 50,
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: currentIndex == 2 ? 1.5 : null,
          titleStyle: AppStyles.styleMedium16(context)
              .copyWith(color: currentIndex == 2 ? null : Colors.white),
          title: currentIndex == 2 ? 'Product royalty' : '20%',
          value: 20,
          color: Color(0xff064061),
          radius: currentIndex == 2 ? 60 : 50,
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: currentIndex == 3 ? 1.5 : null,
          titleStyle: AppStyles.styleMedium16(context)
              .copyWith(color: currentIndex == 3 ? null : Colors.white),
          title: currentIndex == 3 ? 'Other' : '22%',
          value: 22,
          color: Color(0xffE2DECD),
          radius: currentIndex == 3 ? 60 : 50,
        ),
      ],
    );
  }
}
