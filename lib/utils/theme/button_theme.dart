import 'package:flutter/material.dart';

import '../constant/colours.dart';

final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        backgroundColor: primaryColour,
        foregroundColor: white,
        textStyle: const TextStyle(
            fontSize: 16, fontWeight: FontWeight.w600, color: white),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))));

final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        backgroundColor: darkBtnBG,
        foregroundColor: white,
        textStyle: const TextStyle(
            fontFamily: 'HindVadodara',
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: white),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))));

final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
        //backgroundColor: white,
        foregroundColor: primaryColour,
        textStyle: const TextStyle(
            fontSize: 16, fontWeight: FontWeight.w600, color: primaryColour),
        side: const BorderSide(color: primaryColour),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3))));
