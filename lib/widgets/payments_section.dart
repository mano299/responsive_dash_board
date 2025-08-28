import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/income_section.dart';
import 'package:responsive_dash_board/widgets/my_cards_and_transaction_history_section.dart';

class PaymentsSection extends StatelessWidget {
  const PaymentsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 40),
        MyCardsAndTransactionHistorySection(),
        SizedBox(height: 24),
        IncomeSection()
      ],
    );
  }
}