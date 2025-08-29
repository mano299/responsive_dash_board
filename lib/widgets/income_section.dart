import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/widgets/custom_header.dart';
import 'package:responsive_dash_board/widgets/income_chart.dart';
import 'package:responsive_dash_board/widgets/income_details_list_view.dart';
import 'package:responsive_dash_board/widgets/income_section_body.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    // log("${MediaQuery.sizeOf(context).width}");
    return CustomBackgroudContainer(
      child: Column(
        children: [
          CustomHeader(text: 'Income'),
          SizedBox(height: 16),
          IncomeSectionBody()
        ],
      ),
    );
  }
}
