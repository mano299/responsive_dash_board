import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
          elevation: 0,
          color: Color(0xffFAFAFA),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: ListTile(
            title: Text(
              'Cash Withdrawal',
              style: AppStyles.styleSemiBold16,
            ),
            subtitle: Text(
              '13 Apr, 2022 ',
              style: AppStyles.styleRegular16,
            ),
            trailing: Text(r'$20,129', style: AppStyles.styleSemiBold20.copyWith(color: Colors.red),),
          ),
        );
  }
}