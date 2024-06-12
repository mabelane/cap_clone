import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../../../controllers/main_account_controller.dart';
import '../../../utils/constant/icon_path.dart';
import '/utils/constant/colours.dart';
import '/view/shared/default_button.dart';
import 'package:flutter/material.dart';

class VerifyAccount extends StatelessWidget {
  const VerifyAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Theme.of(context).colorScheme.surface,
          child: Column(
            children: [
              redHello,
              Container(
                decoration: decorationBox(context, 0),
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                    controller: Get.put(AccountController())
                        .accountNumberController
                        .value,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      labelText: "Savings account number",
                      suffixIcon: Icon(Icons.info_outline),
                    ),
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                      FilteringTextInputFormatter.digitsOnly
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: defaultButton(
                    context: context,
                    text: "Continue",
                    onPressed: () {
                      Get.put(AccountController()).verifyAccount();
                      // Get.to(page);
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
