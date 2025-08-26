
import 'package:flutter/material.dart';

class CustomBackgroudContainer extends StatelessWidget {
  const CustomBackgroudContainer({
    super.key,
    required this.child,
    this.padding,
  });
  final Widget child;
  final double? padding;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding ?? 20),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(),
        color: Colors.white,
      ),
      child: child,
    );
  }
}
