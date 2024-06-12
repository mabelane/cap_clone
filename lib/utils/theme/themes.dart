import 'package:flutter/material.dart';
import '../constant/colours.dart';
import 'button_theme.dart';

class Themes {
  final darkTheme = ThemeData.dark().copyWith(
      colorScheme: const ColorScheme.dark(
          surfaceTint: black,
          primaryContainer: darkBG,
          surface: darkBG,
          shadow: shadowGrey),
      scaffoldBackgroundColor: primaryDarkBlack,
      elevatedButtonTheme: darkElevatedButtonTheme,
      listTileTheme: const ListTileThemeData(
          tileColor: darkBG,
          minVerticalPadding: 0,
          iconColor: primaryColour,
          titleTextStyle: TextStyle(color: white)),
      appBarTheme: const AppBarTheme(
          centerTitle: true,
          shadowColor: capitecRed,
          titleTextStyle: TextStyle(
            fontSize: 23,
            color: white,
          )),
      iconTheme: const IconThemeData(color: primaryColour, size: 20),
      textTheme: TextTheme(
          titleMedium: const TextStyle().copyWith(
              fontSize: 16.0, fontWeight: FontWeight.w600, color: white)),
      dividerTheme: const DividerThemeData(
        color: shadowGrey,
      ));

  ThemeData lightTheme = ThemeData(
      primaryColor: primaryColour,
      colorScheme: ColorScheme.fromSeed(
          primary: primaryColour,
          seedColor: primaryColour,
          surfaceTint: black,
          primaryContainer: white,
          surface: lightBG,
          shadow: shadowGrey),
      scaffoldBackgroundColor: lightBG,
      shadowColor: shadowGrey,
      elevatedButtonTheme: lightElevatedButtonTheme,
      outlinedButtonTheme: lightOutlinedButtonTheme,
      listTileTheme: const ListTileThemeData(
          tileColor: white,
          iconColor: primaryColour,
          titleTextStyle: TextStyle(color: black)),
      appBarTheme: const AppBarTheme(
          //backgroundColor: primaryColour,
          centerTitle: true,
          shadowColor: shadowGrey,
          titleTextStyle: TextStyle(
            fontSize: 23,
            color: white,
          )),
      iconTheme: const IconThemeData(color: primaryColour, size: 20),

      //primaryIconTheme: const IconThemeData(color: capitecRed, size: 20),
      dividerTheme: const DividerThemeData(
        color: darkGrey,
      ));
}
