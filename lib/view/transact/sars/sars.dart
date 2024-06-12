import 'package:cap_clone/view/shared/single_tab_scafold.dart';
import 'package:flutter/material.dart';

class Sars extends StatelessWidget {
  const Sars({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleTabScafold(
        titleWidget: const Text("SARS eFiling"),
        actionsWidget: [
          TextButton(onPressed: () {}, child: const Text("History"))
        ],
        bodyWidget: Container());
  }
}
