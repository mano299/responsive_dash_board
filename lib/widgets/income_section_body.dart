
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/size_config.dart';
import 'package:responsive_dash_board/widgets/detailed_income_chart.dart';
import 'package:responsive_dash_board/widgets/income_chart.dart';
import 'package:responsive_dash_board/widgets/income_details_list_view.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return width >= SizeConfig.desktop && width < 1750
        ? Padding(
          padding: const EdgeInsets.all(16.0),
          child: DetailedIncomeChart(),
        )
        : Row(
            children: [
              Expanded(child: IncomeChart()),
              Expanded(flex: 2, child: IncomeDetailsListView())
            ],
          );
  }
}
