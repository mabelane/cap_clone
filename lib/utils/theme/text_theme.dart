import 'package:flutter/material.dart';

import '../constant/colours.dart';

final lightTextTheme = TextTheme(
  titleSmall: const TextStyle()
      .copyWith(fontSize: 11, fontWeight: FontWeight.w300, color: white),
  titleMedium: const TextStyle().copyWith(
      fontFamily: 'HindVadodara',
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: white),
  titleLarge: const TextStyle().copyWith(
      fontFamily: 'HindVadodara',
      fontSize: 20,
      fontWeight: FontWeight.w700,
      color: white),
  labelSmall: const TextStyle().copyWith(
      fontFamily: 'HindVadodara',
      fontSize: 16,
      color: white,
      fontWeight: FontWeight.w300,
      fontStyle: FontStyle.normal),
  labelMedium: const TextStyle().copyWith(
      fontFamily: 'HindVadodara',
      fontSize: 20,
      color: white,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal),
  labelLarge: const TextStyle().copyWith(
      fontFamily: 'HindVadodara',
      fontSize: 24,
      color: white,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal),
  bodySmall: const TextStyle(
      fontFamily: 'HindVadodara',
      fontSize: 14,
      color: white,
      fontWeight: FontWeight.w300,
      fontStyle: FontStyle.normal),
);

final darkTextTheme = TextTheme(
    titleSmall: const TextStyle()
        .copyWith(fontSize: 11, fontWeight: FontWeight.w300, color: white),
    titleMedium: const TextStyle().copyWith(
        fontFamily: 'HindVadodara',
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: white),
    titleLarge: const TextStyle().copyWith(
        fontFamily: 'HindVadodara',
        fontSize: 20,
        fontWeight: FontWeight.w700,
        color: white),
    labelSmall: const TextStyle().copyWith(
        fontFamily: 'HindVadodara',
        fontSize: 16,
        color: white,
        fontWeight: FontWeight.w300,
        fontStyle: FontStyle.normal),
    labelMedium: const TextStyle().copyWith(
        fontFamily: 'HindVadodara',
        fontSize: 20,
        color: white,
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal));
