import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item.dart';

class AllExpensesListView extends StatefulWidget {
  const AllExpensesListView({super.key});

  @override
  State<AllExpensesListView> createState() => _AllExpensesListViewState();
}

class _AllExpensesListViewState extends State<AllExpensesListView> {
  static const List<AllExpensesItemModel> expensesItems = [
      AllExpensesItemModel(
        image: Assets.imagesBalance,
        title: 'Balance',
        date: 'April 2022',
        money: 20.129,
      ),
      AllExpensesItemModel(
        image: Assets.imagesIncome,
        title: 'Income',
        date: 'April 2022',
        money: 20.129,
      ),
      AllExpensesItemModel(
        image: Assets.imagesExpenses,
        title: 'Expenses',
        date: 'April 2022',
        money: 20.129,
      ),
    ];
    int isSelected = 0;
  @override
  Widget build(BuildContext context) {
    
    return Row(
      children: expensesItems.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        if (index == 1) {
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isSelected = index;
                    });
                  },
                  child: AllExpensesItem(
                    itemModel: item,
                    isActive: isSelected == index,
                  )),
            ),
          );
        } else {
          return Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isSelected = index;
                });
              },
              child: AllExpensesItem(
                itemModel: item,
                isActive: isSelected == index,
              ),
            ),
          );
        }
      }).toList(),
    );
  }
}
