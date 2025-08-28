import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/active_and_inactive_drawer_item.dart';
import 'package:responsive_dash_board/widgets/drawer_items_list_view.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: UserInfoListTile(
                userInfoModel: UserInfoModel(
                  image: Assets.imagesAvatar,
                  title: 'Lekan Okeowo',
                  subTitle: 'demo@gmail.com',
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 8)),
          DrawerItemsListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox(height: 20)),
                InActiveDrawerItem(
                  drawerItemModel: DrawerItemModel(
                    icon: Assets.imagesSetting,
                    title: 'Setting',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                      icon: Assets.imagesLogout,
                      title: 'Logout',
                    ),
                  ),
                ),
                SizedBox(height: 48)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
