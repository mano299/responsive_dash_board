import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/income_item_details_model.dart';
import 'package:responsive_dash_board/widgets/income_details_item.dart';

class IncomeDetailsListView extends StatelessWidget {
  const IncomeDetailsListView({super.key});
  static const items = [
    IncomeItemDetailsModel(
      color: Color(0xff208CC8),
      title: 'Design service',
      value: '40',
    ),
    IncomeItemDetailsModel(
      color: Color(0xff4EB7F2),
      title: 'Design product',
      value: '25',
    ),
    IncomeItemDetailsModel(
      color: Color(0xff064061),
      title: 'Product royalty',
      value: '20',
    ),
    IncomeItemDetailsModel(
      color: Color(0xffE2DECD),
      title: 'Other',
      value: '22',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children:
          items.map((e) => IncomeDetailsItem(incomeItemDetails: e)).toList(),
    );
  }
}
