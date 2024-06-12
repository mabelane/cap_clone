import 'package:flutter/material.dart';

// TRANSACT
const Color primaryColour = Color(0xFF009de0);
const Color pictonBlue = Color(0xFF40b6e8);
const Color pacificBlue = Color(0xFF0091ce);
const Color lochmara = Color(0xFF0083bb);
const Color transactSecondary = Color(0xFF0183bb);
const Color cardBG = Color(0xFFf9f9f9);

//SAVE
const Color regalBlue = Color(0xFF00486d);
const Color astronatBlue = Color(0xFF003f5f);
const Color pressianBlue = Color(0xFF003652);

//CREDIT
const Color flushMahogany = Color(0xFFc83c37);
const Color wellRead = Color(0xFFb73632);
const Color wellRead2 = Color.fromARGB(232, 198, 94, 91);
const Color wellReadSecondary = Color.fromARGB(255, 251, 66, 60);
const Color creditRed = Color(0xFFe61414);

//INSURE
const Color gunMetal = Color(0xFF4d5c65);
const Color nevada = Color(0xFF5d737e);
const Color riverBed = Color(0xFF4e6066);
const Color boulder = Color(0xFF7c7c7c);
const Color hitGray = Color(0xFFa9b4b9);
const Color mercury = Color(0xFFe1e1e1);
const Color wildSand = Color(0xFFf5f5f5);
const Color white = Color(0xFFffffff);

//SOCIAL MEDIA
const Color dodgeBlue = Color(0xFF1da1f2);
const Color chambray = Color(0xFF3b5998);
const Color deepCerulean = Color(0xFF0077b5);
const Color mountainMeadow = Color(0xFF25d366);

// GREY
const Color secondaryGrey = Color(0xFFadb3ba);
const Color frenchGrey = Color(0xFFccccd2);
const Color darkGrey = Color(0xFF3a3a3a);
const Color reddishGrey = Color(0xFFCF4B39);

// ACCENTS
const Color mossyGreen = Color(0xFF6b9520);
const Color purple = Color(0xFFaa1580);
const Color orange = Color(0xFFf39000);
const Color alertOrange = Color(0xFFd4781c);

// LIVE BETTER:

const Color lbVibrantBlue = Color(0xFF1629da);
const Color lbVibrantRed = Color(0xFFfc0067);
const Color lbPurple = Color(0xFFb518b5);
const Color lbBlue = Color(0xFF008cff);
const Color lbTURQUOISE = Color(0xFF00ffdd);
const Color lbDISCOUNT = Color(0xFF00cdc2);
const Color lbCashBack = Color(0xFF4f1db6);
const Color lbBankBetter = Color(0xFF1629da);
const Color lbSaveBetter = Color(0xFF4f1db6);
const Color lbSpendBetter = Color(0xFFdf0060);

// BLACK
const Color black = Color(0xFF000000);
const Color primaryBlack = Color(0xFF383633);
const Color secondaryBlack = Color(0xFF121313);
const Color secondaryBlacks = Color(0xFF303030);
const Color secondaryBlackss = Color(0xFF131313);

const liveBetterGRADIENT = LinearGradient(colors: [
  Color(0xFF00daff),
  lbVibrantBlue,
  lbVibrantBlue,
  Color(0xFFfc0067),
  Color(0xFFff1234),
]);

// *************************  **********************************

const lightBG = wildSand;
const darkBtnBG = wellRead2;
const darkBG = secondaryBlacks;
const savingsColour = regalBlue;
const insureColour = gunMetal;
const dividerRed = Color.fromARGB(203, 252, 156, 153);
const primaryTextColour = darkGrey;
const capitecRed = flushMahogany;
const capitecDarkBlue = pressianBlue;
const Color capitecDarkBlueIcon = Color(0xFF21859E);
const shadowGrey = secondaryGrey;
const Color primaryDarkBlack = Color(0xFF121212);
const Color primaryDark = Color(0xFF161414);
const Color primaryContainer = Color(0xFF121313);

Gradient defaultGradient =
    const LinearGradient(colors: [deepCerulean, primaryColour]);

Gradient saveGradient =
    const LinearGradient(colors: [capitecDarkBlue, capitecDarkBlue]);

Widget flexibleSpaceGradientNoShadow(BuildContext context) => Container(
        decoration: BoxDecoration(
      gradient: defaultGradient,
    ));

BoxDecoration decorationBox(BuildContext context, double borderRadius) {
  return BoxDecoration(
      borderRadius: BorderRadius.circular(borderRadius),
      color: Theme.of(context).colorScheme.primaryContainer,
      boxShadow: [
        BoxShadow(
            color: Theme.of(context).colorScheme.shadow,
            blurRadius: 2,
            offset: const Offset(0, 1))
      ]);
}

BoxDecoration navDecorationBox(BuildContext context, double borderRadius) {
  return BoxDecoration(
      borderRadius: BorderRadius.circular(borderRadius),
      color: Theme.of(context).colorScheme.primaryContainer,
      boxShadow: [
        BoxShadow(
            color: Theme.of(context).colorScheme.shadow,
            blurRadius: 2,
            offset: const Offset(0, -1.2))
      ]);
}
