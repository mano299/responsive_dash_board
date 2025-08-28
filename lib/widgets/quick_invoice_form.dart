import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/custom_button.dart';
import 'package:responsive_dash_board/widgets/title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                title: 'Customer name',
                hint: 'Type customer name',
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TitleTextField(
                title: 'Customer Email',
                hint: 'Type customer email',
              ),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                title: 'Item name',
                hint: 'Type item name',
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TitleTextField(
                title: 'Item amount',
                hint: 'Type customer amount',
              ),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: Center(
                child: Text(
                  'Add more details',
                  style: AppStyles.styleSemiBold18(context)
                      .copyWith(color: Color(0xff4EB7F2)),
                ),
              ),
            ),
            SizedBox(height: 24),
            Expanded(
              child: CustomButton(text: "Send Money"),
            ),
          ],
        )
      ],
    );
  }
}
