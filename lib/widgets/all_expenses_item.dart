import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item_header.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({super.key, required this.itemModel});
  final AllExpensesItemModel itemModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(image: itemModel.image),
          SizedBox(height: 34),
          Text(
            itemModel.title,
            style: AppStyles.styleSemiBold16,
          ),
          SizedBox(height: 8),
          Text(
            itemModel.date,
            style: AppStyles.styleRegular14,
          ),
          SizedBox(height: 16),
          Text(
            '\$${itemModel.money}',
            style: AppStyles.styleSemiBold24.copyWith(color: Color(0xff4EB7F2)),
          ),
        ],
      ),
    );
  }
}
