import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../../../utils/constant/colours.dart';
import '../../../utils/constant/icon_path.dart';
import '../../shared/default_button.dart';
import '../../shared/payement_notificiation.dart';
import '../../shared/single_tab_scafold.dart';

class InternalBeneficiary extends StatelessWidget {
  const InternalBeneficiary({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleTabScafold(
        titleWidget: const Text("Add Beneficiary"),
        bodyWidget: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
              height: 55,
              child: TextField(
                //controller: Get.find<AccountController>().pinController.value,
                decoration: const InputDecoration(
                  suffixIcon: Icon(Icons.contact_page),
                  border: InputBorder.none,
                  labelText: "Cellphone number",
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
