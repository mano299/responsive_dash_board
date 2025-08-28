import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/widgets/my_cards_section.dart';
import 'package:responsive_dash_board/widgets/transactions_section.dart';

class MyCardsAndTransactionHistorySection extends StatelessWidget {
  const MyCardsAndTransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroudContainer(
      child: Column(
        children: [
          MyCardsSection(),
          Divider(height: 40),
          TransactionsSection(),
        ],
      ),
    );
  }
}
