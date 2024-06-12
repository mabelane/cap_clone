import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../model/transaction_elements.dart';
import 'colours.dart';

class ListContainer extends StatelessWidget {
  final List<TransactionElements> pages;

  const ListContainer({super.key, required this.pages});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: decorationBox(context, 0),
      child: ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: pages.length,
          separatorBuilder: ((BuildContext context, index) => const Divider(
                indent: 16,
                endIndent: 25,
                thickness: 0.2,
              )),
          itemBuilder: ((context, index) => ListTile(
                minLeadingWidth: 10,
                //minVerticalPadding: 5,
                leading:
                    SizedBox(width: 22, height: 22, child: pages[index].icon),
                title: Text(
                  pages[index].title,
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 15,
                ),
                onTap: () => Get.to(() => pages[index].page),
              ))),
    );
  }
}
