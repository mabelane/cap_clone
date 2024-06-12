import 'package:flutter/material.dart';

Widget ForMe(BuildContext context) {
  return Container(
    height: 30,
    width: 90,
    decoration: BoxDecoration(
      color: Theme.of(context).colorScheme.primary,
      borderRadius: BorderRadius.circular(10),
    ),
    child: const Center(child: Text("For me")),
  );
}
