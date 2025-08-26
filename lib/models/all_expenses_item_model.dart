import 'package:flutter/material.dart';

class AllExpensesItemModel {
  final String image;
  final Icon icon;
  final String title;
  final String date;
  final String money;

  const AllExpensesItemModel({required this.image, required this.icon, required this.title, required this.date, required this.money});
}