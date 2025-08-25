import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/drawer_item.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({
    super.key,
  });

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  static const List<DrawerItemModel> drawerItems = [
    DrawerItemModel(icon: Assets.imagesDashboard, title: 'Dashboard'),
    DrawerItemModel(icon: Assets.imagesTransaction, title: 'My Transaction'),
    DrawerItemModel(icon: Assets.imagesStatics, title: 'Statistics'),
    DrawerItemModel(icon: Assets.imagesWallet, title: 'Wallet Account'),
    DrawerItemModel(icon: Assets.imagesInvestment, title: 'My Investments'),
  ];
  int selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: drawerItems.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: GestureDetector(
            onTap: () {
              if (selectedItem != index) {
                setState(() {
                  selectedItem = index;
                });
              }
            },
            child: DrawerItem(
              drawerItemModel: drawerItems[index],
              isActive: selectedItem == index ? true : false,
            ),
          ),
        );
      },
    );
  }
}
