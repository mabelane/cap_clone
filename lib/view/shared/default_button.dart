import 'package:flutter/material.dart';

Widget defaultButton(
    {required BuildContext context,
    required String text,
    required Function() onPressed}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8),
    child: SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: Theme.of(context).elevatedButtonTheme.style,
        child: Text(
          text,
        ),
      ),
    ),
  );
}

Widget outlineButton(
    {required BuildContext context,
    required String text,
    required Function() onPressed}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10.0),
    child: SizedBox(
      width: double.infinity,
      child: OutlinedButton(
        onPressed: onPressed,
        style: Theme.of(context).outlinedButtonTheme.style,
        child: Text(
          text,
        ),
      ),
    ),
  );
}
