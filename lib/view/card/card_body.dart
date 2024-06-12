import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/main_account_controller.dart';
import '../../model/transaction_elements.dart';
import '../../utils/constant/colours.dart';
import '../../utils/constant/icon_path.dart';
import '../../utils/constant/list_container.dart';
import '../../utils/constant/temp_placeholder.dart';

class CardBody extends StatelessWidget {
  CardBody({super.key});

  //AccountController accountController = Get.put(AccountController());
  AccountController accountController = Get.find<AccountController>();

  var manageCard = [
    TransactionElements(
        title: "Tap to pay", icon: payShapIcon, page: const TempPlaceholder()),
    TransactionElements(
        title: "Stop card",
        icon: virtualCardIcon,
        page: const TempPlaceholder()),
  ];
  var manageLimits = [
    {"title": "update permanent limits", "page": const TempPlaceholder()},
    {"title": "set temporary limits", "page": const TempPlaceholder()},
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Theme.of(context).colorScheme.surface,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(vertical: 15),
              //padding: const EdgeInsets.symmetric(vertical: 15),
              child: Column(
                children: [
                  SizedBox(
                      height: MediaQuery.of(context).size.height * 0.4,
                      child: Stack(children: [
                        card,
                        Positioned(
                          top: MediaQuery.of(context).size.height * 0.266,
                          left: MediaQuery.of(context).size.width * 0.095,
                          child: Text(
                            accountController.savingsAccount.value.accountNumber
                                .toString(),
                            style: const TextStyle(color: white),
                          ),
                        ),
                        Positioned(
                          top: MediaQuery.of(context).size.height * 0.23,
                          left: MediaQuery.of(context).size.width * 0.055,
                          child: Text(
                            accountController.cardHolder.value,
                            style: const TextStyle(color: white),
                          ),
                        ),
                      ])),
                  TextButton(
                      onPressed: () {}, child: const Text("Show Card Details"))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Manage card",
                style: Theme.of(context).textTheme.labelLarge,
              ),
            ),
            ListContainer(pages: manageCard),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Manage daily limits",
                style: Theme.of(context).textTheme.labelLarge,
              ),
            ),
            noIcon(context, manageLimits),
          ],
        ),
      ),
    );
  }
}

Widget noIcon(BuildContext context, pages) {
  return Container(
    color: Theme.of(context).colorScheme.primaryContainer,
    child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: pages.length,
        separatorBuilder: ((BuildContext context, index) => const Divider(
              thickness: 0.2,
            )),
        itemBuilder: ((context, index) => SizedBox(
              height: 35,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text(pages[index]['title']), trailingIcon],
              ),
            ))),
  );
}
