import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../utils/constant/colours.dart';
import '../../../home/globalone.dart';
import '../../../shared/default_button.dart';

class SuccessSavingsPlan extends StatelessWidget {
  const SuccessSavingsPlan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.25,
            decoration: decorationBox(context, 0),
            child: Stack(alignment: Alignment.center, children: [
              Column(
                children: [
                  Container(
                    color: mossyGreen,
                    height: MediaQuery.of(context).size.height * 0.125,
                  ),
                  Container(
                    alignment: Alignment.center,
                    color: white,
                    height: MediaQuery.of(context).size.height * 0.125,
                    child: const Text(
                        "You have successfully added flexible savings plan"),
                  )
                ],
              ),
              const CircleAvatar(
                  backgroundColor: white,
                  radius: 40,
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: mossyGreen,
                    foregroundColor: white,
                    child: Icon(
                      Icons.check,
                      size: 50,
                    ),
                  ))
            ]),
          ),
          defaultButton(
              context: context,
              text: "Done",
              onPressed: () => Get.to(() => const GlobalOne())),
          outlineButton(context: context, text: "Transfer", onPressed: () {})
        ]),
      ),
    );
  }
}
