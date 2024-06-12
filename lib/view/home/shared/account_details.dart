import 'package:flutter/material.dart';
import '../../../model/account.dart';
import '../../../utils/constant/colours.dart';
import '../../shared/single_tab_scafold.dart';

class AccountDetails extends StatelessWidget {
  const AccountDetails({
    required this.account,
    super.key,
  });

  final MainAccount account;
  @override
  Widget build(BuildContext context) {
    return SingleTabScafold(
      titleWidget: const Text("Account Details"),
      bodyWidget: Column(
        children: [
          Container(
            height: 90,
            decoration: decorationBox(context, 0),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            decoration: decorationBox(context, 0),
            height: MediaQuery.of(context).size.height * 0.35,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Available balance"),
                Text(account.availableBalance.toString()),
                const Text("Unprocessed transactions"),
                const Text("Current balance"),
                const Text("Interest earned in Mar"),
                const Text("interest rate"),
                const Text("Interest earned tax year"),
                const Text(
                  "Fees paid in Mar",
                  style: TextStyle(color: white),
                ),
                const Text("Date opened"),
                Text(account.dateOpened.toString()),
                const Text("Status"),
              ],
            ),
          )
        ],
      ),
    );
  }
}
