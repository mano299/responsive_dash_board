import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/transactions_header.dart';

class TransactionsSection extends StatelessWidget {
  const TransactionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionsHeader()
      ],
    );
  }
}