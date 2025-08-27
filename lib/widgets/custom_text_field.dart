import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint});
  final String hint;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.blueAccent,
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xffFAFAFA),
        enabledBorder: buildBorder(),
        border: buildBorder(),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.blueAccent,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        hintText: hint,
        hintStyle: AppStyles.styleRegular16.copyWith(color: Color(0xffAAAAAA)),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.white,
        ),
        borderRadius: BorderRadius.circular(12),
      );
  }
}
