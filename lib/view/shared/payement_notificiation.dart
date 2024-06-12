import 'package:cap_clone/utils/constant/colours.dart';
import 'package:cap_clone/view/shared/default_button.dart';
import 'package:flutter/material.dart';

import 'single_tab_scafold.dart';

class PayementNotificiation extends StatelessWidget {
  const PayementNotificiation({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleTabScafold(
        titleWidget: const Text("Payment Notification"),
        bodyWidget: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: lbDISCOUNT,
              ),
              height: MediaQuery.of(context).size.height * 0.1,
              margin: const EdgeInsets.all(10),
              child: Container(
                padding: const EdgeInsets.all(8),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: white,
                ),
                margin: const EdgeInsets.only(
                    left: 10, right: 2, top: 2, bottom: 2),
                child: const Text(
                  "Payment notifications for immediate payments will only be sent after the payment has been processe.",
                  style: TextStyle(fontSize: 13.5),
                ),
              ),
            ),
            Container(
                decoration: decorationBox(context, 0),
                child: RadioListTile(
                  value: 1,
                  groupValue: 1,
                  controlAffinity: ListTileControlAffinity.trailing,
                  title: const Text("None"),
                  onChanged: (value) {},
                )),
            const SizedBox(
              height: 15,
            ),
            Container(
                decoration: decorationBox(context, 0),
                child: RadioListTile(
                  value: 0,
                  groupValue: 1,
                  controlAffinity: ListTileControlAffinity.trailing,
                  title: const Text("SMS"),
                  onChanged: (value) {},
                )),
            const SizedBox(
              height: 15,
            ),
            Container(
                decoration: decorationBox(context, 0),
                child: RadioListTile(
                  value: 0,
                  groupValue: 1,
                  controlAffinity: ListTileControlAffinity.trailing,
                  title: const Text("Email"),
                  onChanged: (value) {},
                )),
            const SizedBox(
              height: 15,
            ),
            defaultButton(context: context, text: "Done", onPressed: () {})
          ],
        ));
  }
}
