import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xff4EB7F2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.lightBlueAccent,
                child: SvgPicture.asset(Assets.imagesBalance),
              ),
              Spacer(),
              Transform.rotate(
                angle: -3.14159,
                child: Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: Colors.white,
                ),
              ),
            ],
          ),
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
