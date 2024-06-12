import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/constant/colours.dart';
import '../../../utils/constant/icon_path.dart';
import '../../shared/default_button.dart';
import '../../shared/forme.dart';
import 'verify_account.dart';

class ActivateApp extends StatelessWidget {
  const ActivateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        width: double.infinity,
        color: Theme.of(context).colorScheme.surface,
        child: Column(
          children: [
            ForMe(context),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 290,
              height: 85,
              child: globalOne,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              child: Text("Activate your app",
                  style: Theme.of(context).textTheme.titleLarge),
            ),
            Container(
              alignment: AlignmentDirectional.topStart,
              margin: const EdgeInsets.all(25),
              padding: const EdgeInsets.all(15),
              width: double.infinity,
              decoration: decorationBox(context, 10),
              child: SizedBox(height: 255, child: activate),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: defaultButton(
                  context: context,
                  text: "Continue",
                  onPressed: () => Get.to(() => const VerifyAccount())),
            ),
          ],
        ),
      )),
    );
  }
}
