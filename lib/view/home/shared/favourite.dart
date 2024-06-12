import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/favourite_controller.dart';
import '../../../utils/constant/colours.dart';
import '../../shared/single_tab_scafold.dart';

class Favourite extends StatelessWidget {
  Favourite({super.key});
  final FavouriteController favouriteController =
      Get.put(FavouriteController());
  @override
  Widget build(BuildContext context) {
    return SingleTabScafold(
        titleWidget: const Text("Favourite"),
        bodyWidget: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "My favourite",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Obx(() => Text(
                        "${favouriteController.myFavourites.length} of ${favouriteController.favLimit}",
                        style: const TextStyle(fontWeight: FontWeight.bold)))
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                decoration: decorationBox(context, 0),
                child: Column(children: [
                  Obx(() => ListView.separated(
                      padding: const EdgeInsets.all(0),
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return CheckboxListTile(
                            visualDensity: VisualDensity.compact,
                            value: true,
                            title: Text(
                                favouriteController.myFavourites[index].title),
                            secondary:
                                favouriteController.myFavourites[index].icon,
                            onChanged: (value) {
                              favouriteController.removeItem(
                                  favouriteController.myFavourites[index]);
                            });
                      },
                      separatorBuilder: (BuildContext context, index) =>
                          const Divider(
                            indent: 16,
                            endIndent: 25,
                            thickness: 0.2,
                          ),
                      itemCount: favouriteController.myFavourites.length))
                ]),
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "Choose favourite",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                decoration: decorationBox(context, 0),
                child: Column(children: [
                  Obx(() => ListView.separated(
                      padding: const EdgeInsets.all(0),
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        //favouriteController.chooseFavourite[index];
                        return CheckboxListTile(
                            visualDensity: VisualDensity.compact,
                            value: false,
                            title: Text(favouriteController
                                .chooseFavourite[index].title),
                            secondary:
                                favouriteController.chooseFavourite[index].icon,
                            onChanged: (value) {
                              favouriteController.removeItem(
                                  favouriteController.chooseFavourite[index]);
                            });
                      },
                      separatorBuilder: (BuildContext context, index) =>
                          const Divider(
                            indent: 16,
                            endIndent: 25,
                            thickness: 0.2,
                          ),
                      itemCount: favouriteController.chooseFavourite.length))
                ]),
              ),
            ],
          ),
        ));
  }
}
