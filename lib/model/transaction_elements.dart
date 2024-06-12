import 'package:flutter/material.dart';

class TransactionElements {
  String title;
  Widget? icon;
  Widget page;
  bool isSelected = false;

  TransactionElements({
    required this.title,
    this.icon,
    required this.page,
  });
}
