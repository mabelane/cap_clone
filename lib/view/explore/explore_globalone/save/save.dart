import 'package:cap_clone/view/shared/default_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../utils/constant/colours.dart';
import '../../../../utils/constant/icon_path.dart';
import '../../../shared/single_tab_scafold.dart';
import 'add_savings_plan.dart';
import 'fixed_term_savings.dart';
import 'flexible_savings.dart';
import 'tax_free_savings.dart';

class Save extends StatelessWidget {
  Save({super.key});

  final savingsOptions = const [
    {
      "name": "Flexible savings",
      "description":
          "Earn from 3.2% interest per year on your daily balances. You have immediate access to your money",
      "page": FlexibleSavings()
    },
    {
      "name": "Fixed-term savings",
      "description":
          "Earn up to 9.5% interest when you fix your savings plan for 6 - 60 months. You can calculate your estimated payout",
      "page": FixedTermSavings()
    },
    {
      "name": "Tax-free savings",
      "description":
          "Deposit up to R36 000 per year without having your interest taxed",
      "page": TaxFreeSavings()
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SingleTabScafold(
      appBarGradient: saveGradient,
      titleWidget: const Text("Save"),
      bodyWidget: Container(
        color: Theme.of(context).colorScheme.surface,
        child: Column(
          children: [
            Container(
              color: capitecDarkBlue,
              height: MediaQuery.of(context).size.height * 0.2,
              child: Container(
                margin: const EdgeInsets.all(20),
                child: Column(children: [
                  savingsIcon,
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Let your money make money with up to 4 free savings plans",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: white, fontSize: 13),
                  )
                ]),
              ),
            ),
            defaultButton(
              context: context,
              text: "Add Savings Plan",
              onPressed: () => Get.to(() => FlexibleSavingsPlan()),
            ),
            outlineButton(
                context: context,
                text: "Fixed-term Savings Calculator",
                onPressed: () {}),
            ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => Container(
                      decoration: decorationBox(context, 5),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: ListTile(
                        contentPadding: const EdgeInsets.only(
                          left: 10,
                          right: 3,
                        ),
                        title: Text(
                          savingsOptions[index]["name"].toString(),
                          style: const TextStyle(
                              color: pressianBlue, fontSize: 16),
                        ),
                        subtitle: Text(
                          savingsOptions[index]["description"].toString(),
                          style: const TextStyle(color: black, fontSize: 11.5),
                        ),
                        trailing: trailingIcon,
                        onTap: () => Get.to(
                            () => savingsOptions[index]["page"] as Widget),
                      ),
                    ),
                itemCount: 3)
          ],
        ),
      ),
    );
  }
}
