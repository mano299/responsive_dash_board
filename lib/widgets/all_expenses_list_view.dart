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
  final List<AllExpensesItemModel> expensesItems = [
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
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(0);
            },
            child: AllExpensesItem(
              itemModel: expensesItems[0],
              isActive: isSelected == 0,
            ),
          ),
        ),
        SizedBox(width: 12),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(1);
            },
            child: AllExpensesItem(
              itemModel: expensesItems[1],
              isActive: isSelected == 1,
            ),
          ),
        ),
        SizedBox(width: 12),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(2);
            },
            child: AllExpensesItem(
              itemModel: expensesItems[2],
              isActive: isSelected == 2,
            ),
          ),
        ),
      ],
    );

    Row(
      children: expensesItems.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        if (index == 1) {
          return Expanded(
            child: GestureDetector(
                onTap: () {
                  updateIndex(index);
                },
                child: AllExpensesItem(
                  itemModel: item,
                  isActive: isSelected == index,
                )),
          );
        } else {
          return Expanded(
            child: GestureDetector(
              onTap: () {
                if (isSelected != index) {
                  setState(() {
                    isSelected = index;
                  });
                }
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

  void updateIndex(int index) {
    if (isSelected != index) {
      setState(() {
        isSelected = index;
      });
    }
  }
}
