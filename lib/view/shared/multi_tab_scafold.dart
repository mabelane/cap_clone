import 'package:flutter/material.dart';

import '../../utils/constant/colours.dart';
import '../../utils/constant/decoration.dart';

class MultiTabScafold extends StatelessWidget {
  const MultiTabScafold(
      {super.key,
      required this.length,
      this.appBarTitle,
      required this.tabBarText,
      this.actions,
      this.leading,
      required this.tabBarViewChildren});

  final int length;
  final Widget? appBarTitle;
  final List<Widget> tabBarText;
  final List<Widget>? actions;
  final Widget? leading;
  final List<Widget> tabBarViewChildren;

  @override
  Widget build(BuildContext context) {
    var nullAppBar = PreferredSize(
      preferredSize: const Size.fromHeight(0.0),
      child: flexibleSpaceGradientNoShadow(context),
    );
    return DefaultTabController(
        length: length,
        child: Scaffold(
          appBar: appBarTitle != null
              ? AppBar(
                  title: appBarTitle,
                  flexibleSpace: const FlexibleSpaceGradient(),
                  actions: actions,
                )
              : nullAppBar,
          body: appBarTitle != null
              ? _column(context)
              : SafeArea(child: _column(context)),
        )
        //: SafeArea(child: _column()),
        );
  }

  Widget _column(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.surface,
      height: double.infinity,
      child: Column(
        children: [
          Container(
            height: 50,
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [deepCerulean, primaryColour]),
                boxShadow: [
                  BoxShadow(
                    color: shadowGrey,
                    spreadRadius: 0.5,
                    offset: Offset(0, 1),
                  )
                ]),
            child: TabBar(
                padding: const EdgeInsets.fromLTRB(5, 0, 10, 3.5),
                indicatorColor: Colors.white,
                indicatorWeight: 3.5,
                labelColor: Colors.white,
                dividerColor: Colors.transparent,
                indicatorSize: TabBarIndicatorSize.tab,
                tabs: tabBarText),
          ),
          Expanded(child: TabBarView(children: tabBarViewChildren))
        ],
      ),
    );
  }
}
