import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/favourite_controller.dart';
import '../../controllers/main_account_controller.dart';
import '../../utils/constant/colours.dart';
import '../../utils/constant/icon_path.dart';
import '../../utils/constant/string_names.dart';
import '../../utils/constant/temp_placeholder.dart';
import '../shared/acc_display_container.dart';
import '../shared/single_tab_scafold.dart';
import 'shared/favourite.dart';

class GlobalOne extends StatefulWidget {
  const GlobalOne({super.key});

  @override
  State<GlobalOne> createState() => _GlobalOneState();
}

class _GlobalOneState extends State<GlobalOne> {
  //final _accountController = Get.put(AccountController());
  final _myFavourites = Get.put(FavouriteController());

  var balance = 12.51;

  final bool _hideBalance = true;

  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SingleTabScafold(
      titleWidget: SizedBox(
        height: 45,
        width: 125,
        child: whiteGlobalOne,
      ),
      titleHeight: 20,
      leadingWidget: IconButton(
        onPressed: (() {}),
        icon: const Icon(Icons.account_circle_outlined, color: white),
      ),
      bodyWidget: Container(
          margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
          //color: const Color.fromARGB(255, 245, 245, 245),
          child: ListView(
            children: [
              AccountDisplayConatiner(
                  leadingIcon: savingsConatiner,
                  title:
                      "Savings Account", //_accountController.savingsAccount.value.accountName,
                  subtitle: availableBalance,
                  balance: balance.toString(),
                  // _accountController
                  //     .savingsAccount.value.availableBalance
                  //     .toString(),
                  page: const TempPlaceholder(),
                  isVisible: _hideBalance),
              Container(
                height: 20,
                margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 11),
                child: Text(
                  liveBetterString,
                  style: Theme.of(context).textTheme.labelLarge,
                ),
              ),
              AccountDisplayConatiner(
                  leadingIcon: livebetterIcon,
                  title: liveBetterString,
                  subtitle: availableBalance,
                  balance: balance.toString(),
                  isVisible: _hideBalance),
              Container(
                height: 35,
                padding: const EdgeInsets.symmetric(horizontal: 11),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Favourites",
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: TextButton.icon(
                          icon: const Icon(
                            Icons.arrow_back_ios_new_outlined,
                            size: 15,
                          ),
                          label: const Text("Edit"),
                          onPressed: () => Get.to(() => Favourite())),
                    )
                  ],
                ),
              ),
              Obx(
                () => GridView.builder(
                    itemCount: _myFavourites.myFavourites.length,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: (1 / .43),
                    ),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () => Get.to(
                            () => _myFavourites.myFavourites[index].page),
                        child: Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.symmetric(
                              horizontal: 5, vertical: 5),
                          //padding: ,
                          decoration: decorationBox(context, 5),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                    height: 25,
                                    child:
                                        _myFavourites.myFavourites[index].icon),
                                const SizedBox(
                                  height: 8,
                                ),
                                Text(_myFavourites.myFavourites[index].title),
                              ]),
                        ),
                      );
                    }),
              )
            ],
          )),
    );
  }
}
