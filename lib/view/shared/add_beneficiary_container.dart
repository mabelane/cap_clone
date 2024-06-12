import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/constant/colours.dart';

class AddBeneficiary extends StatelessWidget {
  const AddBeneficiary({super.key, this.page});
  final Widget? page;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(() => page),
      child: Container(
        decoration: decorationBox(context, 0),
        padding: const EdgeInsets.all(10),
        height: 50,
        child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Add Beneficiary"),
              Icon(
                Icons.add_circle_outline,
                size: 25,
              )
            ]),
      ),
    );
  }
}
