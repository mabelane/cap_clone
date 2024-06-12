import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../../controllers/main_account_controller.dart';
import '../../../utils/constant/colours.dart';
import '../../../utils/constant/icon_path.dart';
import '../../shared/default_button.dart';
import '../../shared/forme.dart';

class VerifyPin extends StatelessWidget {
  const VerifyPin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        padding: const EdgeInsets.all(20),
        decoration: decorationBox(context, 0),
        child: Column(
          children: [
            const SizedBox(
              height: 35,
            ),
            ForMe(context),
            SizedBox(
              width: 290,
              height: 90,
              child: globalOne,
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
                //width: double.infinity,
                height: 15,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Enter Remote PIN"),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Forgot pin",
                        )),
                  ], //TextButton],
                )),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.5),
                border: Border.all(color: shadowGrey, width: 2),
              ),
              child: TextField(
                controller: Get.find<AccountController>().pinController.value,
                decoration: const InputDecoration(
                  border: InputBorder.none,
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
            defaultButton(
                context: context,
                text: "Submit",
                onPressed: () {
                  Get.find<AccountController>().verifyPin();
                })
          ],
        ),
      ),
    );
  }
}
