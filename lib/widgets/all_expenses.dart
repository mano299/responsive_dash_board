import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_header.dart';
import 'package:responsive_dash_board/widgets/all_expenses_list_view.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroudContainer(
      child: Column(
        children: [
          CustomHeader(text: 'AllExpenses',),
          SizedBox(height: 16),
          AllExpensesListView(),
        ],
      ),
    );
  }
}
