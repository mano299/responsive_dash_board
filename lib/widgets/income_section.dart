import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/widgets/custom_header.dart';
import 'package:responsive_dash_board/widgets/income_chart.dart';
import 'package:responsive_dash_board/widgets/income_details_list_view.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroudContainer(
        child: Column(
      children: [
        CustomHeader(text: 'Income'),
        SizedBox(height: 16),
        Row(
          children: [
            Expanded(child: IncomeChart()),
            Expanded(child: IncomeDetailsListView())
          ],
        )
      ],
    ));
  }
}
