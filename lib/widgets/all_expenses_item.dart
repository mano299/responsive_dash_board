import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item_header.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(
            color: Color(0xffF1F1F1),
            width: 1,
          ),
        ),
        color: Color(0xffFFFFFF),
      ),
      child: Column(
        children: [
          AllExpensesItemHeader(),
          SizedBox(height: 34),
          Text(
            'Balance',
            style: AppStyles.styleSemiBold16.copyWith(color: Colors.white),
          ),
          Text(
            'April 2022',
            style: AppStyles.styleRegular14.copyWith(color: Color(0xffFAFAFA)),
          ),
          Text(
            '\$20,129',
            style: AppStyles.styleSemiBold24,
          ),
        ],
      ),
    );
  }
}


