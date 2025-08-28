import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/transactions_header.dart';

class TransactionsSection extends StatelessWidget {
  const TransactionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransactionsHeader(),
        SizedBox(height: 20),
        Text('13 April 2022',
            style: AppStyles.styleMedium16.copyWith(color: Color(0xffAAAAAA))),
        SizedBox(height: 16),
        
      ],
    );
  }
}
