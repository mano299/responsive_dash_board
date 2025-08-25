import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses_header.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          children: [
            AllExpensesHeader()
          ],
        ),
      ),
    );
  }
}
