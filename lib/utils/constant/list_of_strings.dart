import 'package:flutter/material.dart';

class ListOfStrings {
  ListOfStrings();

  List<String> lowPrices = const [
    "R4.50 per 100MB",
    "R45 per GB",
    "90c per minute",
    "25c per SMS",
  ];

  List<String> whyTheDifference = const [
    "Your Available Balance is how much you may spend. The Balance could differ from the Available Balance because:",
    "R30 is reserved in your account as this is the minimum account balance needed to have a Global One savings account (Refer to our fees for further information).",
    "Your account might have transactions that have been reserved on your card that have not yet cleared from your account",
    "In the case of a negative Balance, you might have outstanding fees that must settled before you can continue transacting on your account",
  ];

  List<Widget> flatRates = [
    const Text(
        "⚈ The cost per unit for data, minutes or SMS remains the same - whether you buy a little or a lot.",
        strutStyle: StrutStyle(height: 1.5)),
    const Text("⚈ Our Flat rates mean no out-of-bundle rates.",
        strutStyle: StrutStyle(height: 1.5)),
    RichText(
        strutStyle: const StrutStyle(height: 1.5),
        text: const TextSpan(
            text: "⚈ No need to convert ",
            style: TextStyle(color: Colors.black),
            children: [
              TextSpan(
                  text: "Connect airtime, ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black)),
              TextSpan(
                  text:
                      "it is used for all your data, minutes and SMS needs - costing you no more than separate bundles",
                  style: TextStyle(color: Colors.black))
            ])),
  ];

  List<Widget> simCard = [
    RichText(
        strutStyle: const StrutStyle(height: 1.5),
        text: const TextSpan(
            text: "⚈ Visit a branch with your  ",
            style: TextStyle(color: Colors.black),
            children: [
              TextSpan(
                  text: "proof of residence , ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black)),
              TextSpan(
                  text: "(required for RICA)",
                  style: TextStyle(color: Colors.black))
            ])),
    const Text(
        "⚈ You can keep your existing cellphone number by porting in, or get a new Connect number.",
        strutStyle: StrutStyle(height: 1.5)),
    RichText(
        strutStyle: const StrutStyle(height: 1.5),
        text: const TextSpan(
            text: "⚈ A once-off, ",
            style: TextStyle(color: Colors.black),
            children: [
              TextSpan(
                  text: "R5 SIM card fee ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black)),
              TextSpan(
                  text: "will be deducted from your main account",
                  style: TextStyle(color: Colors.black))
            ])),
  ];

  List<String> benefits = const [
    "A main savings aacount and up to 4 free savings plans",
    "Secure low-cost money transfer",
    "Use your Capitec card worldwide whenever you see the Mastercard 💳 logo",
    "Access all your accounts with one card",
    "Free money transfers between your aacounts on the app",
    "Zero data charges when you use our app",
  ];

  List<String> getSmarterFeatures = const [
    "Browse, register and pay for online short courses on the app",
    "Earn a certificate from a top-tier SA university",
    "Enjoy a personalised, people-mediated online learning experience",
    "Note: You must pay the reduced course fee in full upon registration",
  ];

  List<String> liveBetterFeatures = const [
    "Simple and practical courses to help anyone manage and grow thier moneyy.",
    "Learn to budget, save, invest and make smart credit decisions.",
    "Free - no course fees and no data costs.",
    "Short modules and quizzes to make learing fun.",
    "Earn points, badges and bragging rights.",
    "Cash prizes up for grabs.",
  ];

  List<String> easyEquitiesFeatures = [
    "Stay on top of your investment portfolio with a detailed account overview",
    "Place buy and sell instructions when the market is closed.",
    "Invest in a piece of a share, buy Fractional Share Rights (FSRs), with the benefits of a full share.",
    "Invest in shares, TFSA and ETF's in seconds",
  ];
}
