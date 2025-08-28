import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatelessWidget {
  const IncomeChart({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getPieChartDat()));
  }

  PieChartData getPieChartDat() {
    return PieChartData(sections: [
      PieChartSectionData(
        showTitle: false,
        value: 40,
        color: Color(0xff208CC8),
        radius: 40,
      ),
    ]);
  }
}
