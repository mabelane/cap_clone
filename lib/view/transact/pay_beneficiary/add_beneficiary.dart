import 'package:cap_clone/utils/constant/colours.dart';
import 'package:cap_clone/view/shared/single_tab_scafold.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../utils/constant/icon_path.dart';
import 'bank_account.dart';
import 'bank_registered.dart';
import 'internal_beneficiary.dart';

class AddBeneficiaryPayBeneficiary extends StatelessWidget {
  AddBeneficiaryPayBeneficiary({super.key});

  final beneficiary = [
    {
      "name": "Capitec cellphone",
      "description": "Pay to Capitec client's cellphone number",
      "page": const InternalBeneficiary()
    },
    {
      "name": "Capitec registered",
      "description": "DStv, Telkom, Mr Price, credit card, etc.",
      "page": const BankRegistered()
    },
    {
      "name": "Bank account",
      "description": "Enter beneficiary's bank details",
      "page": const BankAccount()
    }
  ];
  @override
  Widget build(BuildContext context) {
    return SingleTabScafold(
        titleWidget: const Text("Add Beneficiary"),
        bodyWidget: Container(
          decoration: decorationBox(context, 0),
          child: ListView.separated(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(vertical: 5),
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => ListTile(
                    minVerticalPadding: 0,
                    minTileHeight: 5,
                    title: Text(beneficiary[index]['name'].toString()),
                    subtitle:
                        Text(beneficiary[index]['description'].toString()),
                    trailing: trailingIcon,
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 3.5),
                    onTap: () => Get.to(() => beneficiary[index]['page']),
                  ),
              separatorBuilder: (context, index) =>
                  const Divider(thickness: 0.2),
              itemCount: 3),
        ));
  }
}
