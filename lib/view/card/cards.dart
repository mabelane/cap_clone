import 'package:flutter/material.dart';

import '../shared/multi_tab_scafold.dart';
import 'card_body.dart';
import 'virtual_card.dart';

class Cards extends StatelessWidget {
  const Cards({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiTabScafold(
        length: 2,
        tabBarText: const [Text("Cards"), Text("Virtual")],
        tabBarViewChildren: [CardBody(), const VirtualCard()]);
  }
}
