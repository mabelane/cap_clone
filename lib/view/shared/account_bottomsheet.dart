import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../model/other/sheet_options.dart';

Future accountDisplayBottomSheet(BuildContext context,
    List<ButtomSheetOptions> options, String accountName) {
  return showModalBottomSheet(
      backgroundColor: Theme.of(context).colorScheme.surface,
      context: context,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)), //for the round edges
      builder: (context) => Container(
            padding: EdgeInsets.zero,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15)),
              color: Theme.of(context).colorScheme.surface,
            ),
            height: MediaQuery.of(context).size.height * 0.5,
            child: Column(
              children: [
                Container(
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15)),
                    color: Theme.of(context).colorScheme.surface,
                  ),
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        accountName,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.close))
                    ],
                  ),
                ),
                SizedBox(
                    child: ListView.separated(
                        padding: const EdgeInsets.only(left: 15),
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: options.length,
                        separatorBuilder: ((BuildContext context, index) =>
                            const Divider(
                              //indent: 6,
                              endIndent: 25,
                              thickness: 0.2,
                            )),
                        itemBuilder: ((context, index) => SizedBox(
                              height: 45,
                              child: InkWell(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: Text(
                                    options[index].optionName,
                                  ),
                                ),
                                onTap: () =>
                                    Get.to(() => options[index].routePage),
                              ),
                            ))))
              ],
            ),
          ),
      isDismissible: true,
      isScrollControlled: false);
}
