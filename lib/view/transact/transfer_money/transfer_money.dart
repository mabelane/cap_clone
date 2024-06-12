import 'package:cap_clone/utils/constant/colours.dart';
import 'package:cap_clone/utils/constant/icon_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../model/account.dart';
import '../../shared/custom_list_tile.dart';
import '../../shared/default_button.dart';
import '../../shared/single_tab_scafold.dart';

class TransferMoney extends StatelessWidget {
  TransferMoney({super.key});

  final MainAccount savings = MainAccount(
    clientId: "c469a23c-05f0-48d9-a9e1-f513f9168e26",
    status: 1,
    branchId: "06ac07d9-6c75-4455-9037-83196a849c02",
    accountNumber: 002354988,
    accountName: "Savings Account",
    accountType: "Savings",
    accountId: "333",
    availableBalance: 51000.36,
    currentBalance: 56.90,
    interestRate: 15.3,
    interestEarned: 0.0,
    monthlyFees: 0.0,
    isConfigured: 1,
    dateOpened: DateTime.now(),
  );

  //List<Account> toAccount;

  @override
  Widget build(BuildContext context) {
    return SingleTabScafold(
        titleWidget: const Text("Transfer Money"),
        bodyWidget: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 15, top: 10),
              child: Text(
                "From",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            fromTransferConatiner(context, savings),
            const Padding(
              padding: EdgeInsets.only(
                left: 15,
              ),
              child: Text(
                "To",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            toTransferConatiner(context, savings),
            Container(
              height: 55,
              padding: const EdgeInsets.only(left: 15),
              margin: const EdgeInsets.only(top: 5),
              decoration: decorationBox(context, 0),
              child: TextField(
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  labelText: "Amount",
                ),
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                  FilteringTextInputFormatter.digitsOnly
                ],
              ),
            ),
            Container(
              height: 55,
              padding: const EdgeInsets.only(left: 15),
              margin: const EdgeInsets.only(top: 15),
              decoration: decorationBox(context, 0),
              child: const TextField(
                  decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "My statement description (Optional)",
              )),
            ),
            defaultButton(context: context, text: "Transfer", onPressed: () {}),
          ],
        ));
  }
}

Widget fromTransferConatiner(BuildContext context, MainAccount account) {
  Widget accountIcon(MainAccount account) {
    if (account.isConfigured == 1) {
      return transactIcon;
    } else if (account.isConfigured == 0) {
      return savingsIcon;
    } else {
      return livebetterIcon;
    }
  }

  return CustomListTile(
    leading: accountIcon(account),
    title: account.accountName,
    availableBalance: account.availableBalance,
  );
}

Widget toTransferConatiner(BuildContext context, MainAccount account) {
  Widget accountIcon(MainAccount account) {
    if (account.isConfigured == 1) {
      return transactIcon;
    } else {
      return savingsIcon;
    }
  }

  return CustomListTile(
    leading: accountIcon(account),
    title: account.accountName,
    availableBalance: account.availableBalance,
  );
}
