import 'package:flutter/material.dart';

import '../../../utils/constant/colours.dart';
import '../../shared/single_tab_scafold.dart';

class ProofOfAccount extends StatelessWidget {
  const ProofOfAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleTabScafold(
        titleWidget: const Text("Proof of Account"),
        bodyWidget: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                height: 55,
                padding: const EdgeInsets.only(left: 15),
                width: MediaQuery.of(context).size.width,
                decoration: decorationBox(context, 0),
                child: const TextField(
                    decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: "Email address",
                ))),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      shape: WidgetStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)))),
                  child: const Text("Send")),
            )
          ],
        ));
  }
}
