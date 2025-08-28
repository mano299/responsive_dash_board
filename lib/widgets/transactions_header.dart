import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class TransactionsHeader extends StatelessWidget {
  const TransactionsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Transaction History',
          style: AppStyles.styleSemiBold20,
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'See all',
            style: AppStyles.styleMedium16.copyWith(color: Color(0xff4EB7F2)),
          ),
        ),
      ],
    );
  }
}
