import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/constant/colours.dart';
import '../../utils/constant/icon_path.dart';
import '../../utils/constant/string_names.dart';

class AccountDisplayConatiner extends StatelessWidget {
  const AccountDisplayConatiner(
      {super.key,
      required this.leadingIcon,
      this.title,
      required this.subtitle,
      required this.balance,
      required this.isVisible,
      this.page});

  final Widget leadingIcon;
  final Widget? page;
  final String? title;
  final String subtitle;
  final String balance;
  final bool isVisible;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 6,
      ),
      height: 78,
      clipBehavior: Clip.hardEdge,
      decoration: decorationBox(context, 5),
      child: Row(
        children: [
          leadingIcon,
          Expanded(
            child: ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 8),
                title: Text(
                  title!,
                ),
                subtitle: isVisible ? Text(availableBalance) : null,
                trailing: SizedBox(
                  height: 50,
                  width: 150,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      isVisible
                          ? Text(balance,
                              style: Theme.of(context).textTheme.labelLarge)
                          : const SizedBox(),
                      const SizedBox(
                        width: 5,
                      ),
                      trailingIcon,
                    ],
                  ),
                ),
                onTap: () {
                  Get.to(page);
                }),
          ),
        ],
      ),
    );
  }
}
