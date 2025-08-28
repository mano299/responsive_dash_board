import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {

  int currentIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(getPieChartDat()),
    );
  }

  PieChartData getPieChartDat() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, p1) {
          currentIndex = p1?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {
            
          });
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          showTitle: false,
          value: 40,
          color: Color(0xff208CC8),
          radius: currentIndex == 0 ? 60 : 50,
        ),
        PieChartSectionData(
          showTitle: false,
          value: 25,
          color: Color(0xff4EB7F2),
          radius: currentIndex == 1 ? 60 : 50,
        ),
        PieChartSectionData(
          showTitle: false,
          value: 20,
          color: Color(0xff064061),
          radius: currentIndex == 2 ? 60 : 50,
        ),
        PieChartSectionData(
          showTitle: false,
          value: 22,
          color: Color(0xffE2DECD),
          radius: currentIndex == 3 ? 60 : 50,
        ),
      ],
    );
  }
}
