import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key, required this.image, this.backgroundColor, this.imageColor,
  });
  final String image;
  final Color? backgroundColor, imageColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor:backgroundColor ?? Color(0xffFAFAFA),
          child: SvgPicture.asset(
            image,
            // ignore: deprecated_member_use
            color: imageColor ?? Color(0xff4EB7F2),
          ),
        ),
        Spacer(),
        Transform.rotate(
          angle: -3.14159,
          child: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: imageColor != null ? Colors.white: Color(0xff064061),
          ),
        ),
      ],
    );
  }
}
