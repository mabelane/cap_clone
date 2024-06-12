import 'package:cap_clone/view/shared/multi_tab_scafold.dart';
import 'package:flutter/widgets.dart';

import 'cap_connect/capitec_connect.dart';
import 'explore_globalone/explore_globalone.dart';
import 'explore_livebetter/explore_livebetter.dart';

class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiTabScafold(
        appBarTitle: const Text("Explore"),
        length: 3,
        tabBarText: const [
          Text("GlobalOne"),
          Text("Capitec Connect"),
          Text("Live Better")
        ],
        tabBarViewChildren: [
          const ExploreGlobalOne(),
          CapitecConnect(),
          const ExploreLiveBetter()
        ]);
  }
}
