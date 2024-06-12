import 'package:cap_clone/utils/constant/icon_path.dart';
import 'package:cap_clone/view/shared/default_button.dart';
import 'package:cap_clone/view/shared/single_tab_scafold.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/constant/colours.dart';
import '../explore/explore_globalone/save/success_savings_plan.dart';

class FlexibleSavingsTsAndCs extends StatefulWidget {
  FlexibleSavingsTsAndCs({super.key});

  @override
  State<FlexibleSavingsTsAndCs> createState() => _FlexibleSavingsTsAndCsState();
}

class _FlexibleSavingsTsAndCsState extends State<FlexibleSavingsTsAndCs> {
  bool checkboxValue1 = false;
  bool checkboxValue2 = false;

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
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              height: 85,
              child: const Text(
                "You must read the agreement before continuing because it contains important terms and conditions that you need to understand and accept.",
                textAlign: TextAlign.center,
                style: TextStyle(color: white, fontSize: 13.5),
              ),
            ),
            Container(
              decoration: decorationBox(context, 0),
              child: Column(
                children: [
                  ListTile(
                    contentPadding: const EdgeInsets.only(left: 10, right: 5),
                    title: const Text("View agreement details"),
                    trailing: trailingIcon,
                  ),
                  const Divider(
                    thickness: 0.5,
                    indent: 12,
                    endIndent: 15,
                  ),
                  CheckboxListTile(
                    value: checkboxValue1,
                    contentPadding: const EdgeInsets.only(right: 8),
                    controlAffinity: ListTileControlAffinity.leading,
                    isThreeLine: true,
                    subtitle: const Text(
                      "I have read and understood the nature and effect of the clauses of the flexible savings account agreement marked in bold.",
                    ),
                    onChanged: (bool? value) {
                      setState(() {
                        checkboxValue1 = value!;
                      });
                    },
                  ),
                  CheckboxListTile(
                    value: checkboxValue2,
                    contentPadding: const EdgeInsets.only(right: 8),
                    controlAffinity: ListTileControlAffinity.leading,
                    isThreeLine: true,
                    subtitle: const Text(
                      "I have read the flexible savings account agreement terms and conditions shown above. I understand their meaning and effect. I accept such terms and conditions and I am prepared to uphold them.",
                    ),
                    onChanged: (bool? value) {
                      setState(() {
                        checkboxValue2 = value!;
                      });
                    },
                  )
                ],
              ),
            ),
            defaultButton(
              context: context,
              text: "Accept",
              onPressed: () => Get.to(() => SuccessSavingsPlan()),
            ),
            outlineButton(context: context, text: "Cancel", onPressed: () {}),
          ],
        ));
  }
}
