import 'package:cap_clone/view/shared/single_tab_scafold.dart';
import 'package:flutter/material.dart';

class ChooseBank extends StatelessWidget {
  const ChooseBank({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleTabScafold(
        titleWidget: const Text("Choose Bank"),
        bodyWidget:
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Padding(
            padding: EdgeInsets.only(left: 15, top: 20, bottom: 10),
            child:
                Text("Popular", style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          Container(
            height: 100,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15, top: 20, bottom: 10),
            child: Text("All", style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          Container(),
        ]));
  }
}
