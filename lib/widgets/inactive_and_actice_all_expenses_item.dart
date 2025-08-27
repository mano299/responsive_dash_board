import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item_header.dart';

class InactiveAllExpensesItem extends StatelessWidget {
  const InactiveAllExpensesItem({
    super.key,
    required this.itemModel,
  });

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

class ActiveAllExpensesItem extends StatelessWidget {
  const ActiveAllExpensesItem({
    super.key,
    required this.itemModel,
  });

  final AllExpensesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        color: Color(0xff4EB7F2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            image: itemModel.image,
            // ignore: deprecated_member_use
            backgroundColor: Colors.white.withOpacity(0.1),
            imageColor: Colors.white,
          ),
          SizedBox(height: 34),
          Text(
            itemModel.title,
            style: AppStyles.styleSemiBold16.copyWith(color: Colors.white),
          ),
          SizedBox(height: 8),
          Text(
            itemModel.date,
            style: AppStyles.styleRegular14.copyWith(color: Color(0xffFAFAFA)),
          ),
          SizedBox(height: 16),
          Text(
            '\$${itemModel.money}',
            style: AppStyles.styleSemiBold24,
          ),
        ],
      ),
    );
  }
}
