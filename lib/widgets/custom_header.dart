import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: AppStyles.styleSemiBold20(context),
        ),
        Spacer(),
        Container(
          padding: EdgeInsets.all(20),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: BorderSide(
                width: 1,
                color: Color(0xffF1F1F1),
              ),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Row(
            children: [
              Text(
                'Monthly',
                style: AppStyles.styleMedium16(context),
              ),
              SizedBox(width: 18),
              Transform.rotate(
                angle: -1.5708,
                child: Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: Color(0xff064061),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
