import 'package:flutter/material.dart';

import '../../utils/constant/colours.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    this.leading,
    this.title,
    this.availableBalance,
    this.textAvailableBalance,
    this.onTap,
  });
  final Function? onTap;
  final Widget? leading;
  final String? title;
  final double? availableBalance;
  final double? textAvailableBalance;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4),
      margin: const EdgeInsets.symmetric(vertical: 15),
      height: 50,
      decoration: decorationBox(context, 0),
      child: InkWell(
        onTap: () => onTap,
        child: Row(
          children: [
            SizedBox(width: 45, child: leading),
            Expanded(
              // Expanded section for title and subtitle
              child: Column(
                // Column layout for title and subtitle
                crossAxisAlignment: CrossAxisAlignment.start, // Align text left
                children: [
                  Text(title ?? ""),
                  //const SizedBox(height: 3),
                  const Text("Available balance"),
                ],
              ),
            ),
            SizedBox(
              //width: 85,
              child: Row(
                children: [
                  Text("R$availableBalance"),
                  const Icon(
                    Icons.more_vert,
                    size: 25,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
