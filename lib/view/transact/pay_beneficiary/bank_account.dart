import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../../utils/constant/colours.dart';
import '../../../utils/constant/icon_path.dart';
import '../../shared/default_button.dart';
import '../../shared/payement_notificiation.dart';
import '../../shared/single_tab_scafold.dart';
import 'choose_bank.dart';

class BankAccount extends StatelessWidget {
  const BankAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleTabScafold(
        titleWidget: const Text("Add Beneficiary"),
        bodyWidget: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              color: primaryColour,
              child: const Text(
                  "Ensure you enter the correct details. Only Capitec account numbers are verified against the actual accountholder.",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: white)),
            ),
            Container(
              decoration: decorationBox(context, 0),
              padding: const EdgeInsets.only(left: 10),
              height: 55,
              child: const TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: "Beneficiary name",
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
                decoration: decorationBox(context, 0),
                padding: const EdgeInsets.only(left: 10),
                height: 110,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: "Account number",
                        ),
                      ),
                    ),
                    const Divider(endIndent: 16, indent: 5, thickness: 0.2),
                    ListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 0),
                        minTileHeight: 0,
                        title: const Text("Choose bank"),
                        trailing: trailingIcon,
                        onTap: () => Get.to(() => const ChooseBank())),
                  ],
                )),
            const SizedBox(
              height: 15,
            ),
            Container(
              decoration: decorationBox(context, 0),
              padding: const EdgeInsets.only(left: 10),
              height: 55,
              child: TextField(
                //controller: Get.find<AccountController>().pinController.value,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  labelText: "Branch code",
                ),
                obscureText: true,
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                  FilteringTextInputFormatter.digitsOnly
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              decoration: decorationBox(context, 0),
              padding: const EdgeInsets.only(left: 10),
              height: 55,
              child: const TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: "Beneficiary reference",
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Payment notification"),
            ),
            Container(
              alignment: Alignment.center,
              decoration: decorationBox(context, 0),
              height: 55,
              child: ListTile(
                horizontalTitleGap: 0,
                minTileHeight: 0,
                contentPadding:
                    const EdgeInsets.only(left: 10, right: 5, top: 0),
                title: const Text("Choose notification type"),
                subtitle: const Text("None",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                trailing: trailingIcon,
                onTap: () => Get.to(() => const PayementNotificiation()),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            defaultButton(context: context, text: "Add", onPressed: () {})
          ],
        ));
  }
}
