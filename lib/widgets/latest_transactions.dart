import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class LatestTransactions extends StatelessWidget {
  const LatestTransactions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Latest Transaction',
          style: AppStyles.styleMedium16,
        ),
        SizedBox(height: 12),

      ],
    );
  }
}

