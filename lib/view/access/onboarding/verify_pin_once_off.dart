import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../../controllers/main_account_controller.dart';
import '../../../utils/constant/colours.dart';
import '../../../utils/constant/icon_path.dart';
import '../../shared/default_button.dart';

class FirstTimePinVerification extends StatelessWidget {
  FirstTimePinVerification({super.key});
  TextEditingController pin = TextEditingController();
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
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: TextField(
                    controller:
                        Get.find<AccountController>().pinController.value,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      labelText: "Remote App PIN",
                      prefixIcon: Icon(Icons.lock_outline),
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
                      Get.find<AccountController>().verifyPin();
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
