import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/income_item_details_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class IncomeDetailsItem extends StatelessWidget {
  const IncomeDetailsItem({super.key, required this.incomeItemDetails});
  final IncomeItemDetailsModel incomeItemDetails;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 12,
        width: 12,
        decoration: ShapeDecoration(
          color: incomeItemDetails.color,
          shape: OvalBorder(),
        ),
      ),
      title: Text(
        incomeItemDetails.title,
        style: AppStyles.styleRegular16,
      ),
      trailing: Text(
        '${incomeItemDetails.value}%',
        style: AppStyles.styleMedium16,
      ),
    );
  }
}
