import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../../../../utils/constant/colours.dart';
import '../../../shared/default_button.dart';
import '../../../shared/single_tab_scafold.dart';
import '../../../agreements/flexible_savings_t_and_c.dart';

class FlexibleSavingsPlan extends StatelessWidget {
  const FlexibleSavingsPlan({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleTabScafold(
      appBarGradient: saveGradient,
      titleWidget: const Text("Flexible Savings"),
      bodyWidget: Column(
        children: [
          Container(
            alignment: Alignment.center,
            color: pressianBlue,
            width: double.infinity,
            height: 40,
            child: const Text(
              "Add a name. You can change this later.",
              style: TextStyle(color: white),
            ),
          ),
          Container(
            decoration: decorationBox(context, 0),
            height: 55,
            child: const TextField(
              //controller: Get.find<AccountController>().pinController.value,
              decoration: InputDecoration(
                labelText: "Savings plan name",
                border: InputBorder.none,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: defaultButton(
              context: context,
              text: "Add",
              onPressed: () => Get.to(() => FlexibleSavingsTsAndCs()),
            ),
          )
        ],
      ),
    );
  }
}
