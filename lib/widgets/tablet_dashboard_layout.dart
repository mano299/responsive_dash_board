import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';

class TabletDashboardLayout extends StatelessWidget {
  const TabletDashboardLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        Expanded(
          flex: 2,
          child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: AllExpensesAndQuickInvoiceSection(),
        ))
      ],
    );
  }
}