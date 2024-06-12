import 'package:cap_clone/view/shared/multi_tab_scafold.dart';
import 'package:flutter/material.dart';
import 'inbox.dart';
import 'messages_transaction.dart';

class Messages extends StatelessWidget {
  const Messages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MultiTabScafold(
        length: 2,
        appBarTitle: Text("Messages"),
        tabBarText: [Text("Transactions"), Text("Inbox")],
        tabBarViewChildren: [Transactions(), Inbox()]);
  }
}
