import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/income_chart.dart';
import 'package:responsive_dash_board/widgets/income_details_list_view.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({super.key});

  @override
  Widget build(BuildContext context) {
    log('${MediaQuery.of(context).size.width}');
    double width = MediaQuery.of(context).size.width;
    return width >= 1200 && width < 1750
        ? SizedBox()
        : Row(
            children: [
              Expanded(child: IncomeChart()),
              Expanded(flex: 2, child: IncomeDetailsListView())
            ],
          );
  }
}
