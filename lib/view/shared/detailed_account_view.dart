import 'package:flutter/material.dart';
import '../../model/account.dart';
import '../../model/other/sheet_options.dart';
import '../../utils/constant/colours.dart';
import '../../utils/constant/decoration.dart';
import '../../utils/constant/list_of_strings.dart';
import '../../utils/constant/list_of_text.dart';
import '../../utils/constant/temp_placeholder.dart';
import '../transact/transfer_money/transfer_money.dart';
import 'account_bottomsheet.dart';
import '../home/shared/proof_of_account.dart';
import '../home/shared/transaction_details/all.dart';
import '../home/shared/transaction_details/money_in.dart';
import '../home/shared/transaction_details/money_out.dart';
import '../home/shared/transaction_details/track.dart';

class DetailedAccountView extends StatelessWidget {
  DetailedAccountView({
    required this.account,
    super.key,
  });
  static const String savingsAccount = "Savings Account";
  static const String all = "All";
  static const String moneyIn = "Money In";
  static const String moneyOut = "Money Out";
  static const String track = "Track";

  final ListOfStrings _listOfStrings = ListOfStrings();
  final MainAccount account;

  List<ButtomSheetOptions> options = [
    ButtomSheetOptions(optionName: "Transfer", routePage: TransferMoney()),
    ButtomSheetOptions(
        optionName: "Proof of Account", routePage: const ProofOfAccount()),
    ButtomSheetOptions(
        optionName: "Statement", routePage: const ProofOfAccount()),
    // ButtomSheetOptions(
    //     optionName: "View account details",
    //     routePage: AccountDetails(
    //       account: account.accountId,
    //     )),
    ButtomSheetOptions(
        optionName: "Certificate of interest",
        routePage: const TempPlaceholder()),
    ButtomSheetOptions(
        optionName: "Add savings plan", routePage: const TempPlaceholder()),
  ];

  Future _displayBottomSheet(BuildContext context) {
    return showModalBottomSheet(
        backgroundColor: white,
        context: context,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30)), //for the round edges
        builder: (context) => SizedBox(
              height: MediaQuery.of(context).size.height * 0.45,
              child: Column(
                children: [
                  ListOfText(
                      itemCount: _listOfStrings.whyTheDifference.length,
                      text: _listOfStrings.whyTheDifference)
                ],
              ),
            ),
        isDismissible: true, //boolean if you want to be able to dismiss it
        isScrollControlled:
            false //boolean if something does not display, try that
        );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(savingsAccount),
          flexibleSpace: const FlexibleSpaceGradient(),
          actions: [
            IconButton(
                onPressed: () {
                  accountDisplayBottomSheet(
                      context, options, account.accountName!);
                },
                icon: const Icon(Icons.more_vert))
          ],
        ),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              height: 145,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient:
                    const LinearGradient(colors: [deepCerulean, primaryColour]),
                //boxShadow: [boxShadow]
              ),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 55,
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(vertical: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.black87.withOpacity(.25),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(
                          width: 50,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Available",
                              //style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "R${account.availableBalance}",
                              //style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        IconButton(
                            onPressed: () {
                              _displayBottomSheet(context);
                            },
                            icon: const Icon(Icons.info_outline))
                      ],
                    ),
                  ),
                  Column(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Balance",
                        //style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "R${account.availableBalance}",
                        //style: TextStyle(color: Colors.white),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                gradient: defaultGradient,
              ),
              child: const TabBar(
                  padding: EdgeInsets.fromLTRB(5, 0, 10, 5),
                  labelPadding: EdgeInsets.symmetric(horizontal: 8),
                  indicatorColor: Colors.white,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicatorWeight: 3,
                  dividerColor: Colors.transparent,

                  //indicatorPadding: EdgeInsets.all(10),
                  labelColor: Colors.white,
                  tabs: [
                    Tab(
                      text: all,
                    ),
                    Tab(
                      text: moneyIn,
                    ),
                    Tab(
                      text: moneyOut,
                    ),
                    Tab(
                      text: track,
                    )
                  ]),
            ),
            const Expanded(
                child: TabBarView(children: [
              All(),
              MoneyIn(),
              MoneyOut(),
              Track(),
            ]))
          ],
        ),
      ),
    );
  }
}
