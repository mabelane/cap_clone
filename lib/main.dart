import 'package:cap_clone/view/home/globalone.dart';
import 'package:cap_clone/view/home/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controllers/favourite_controller.dart';
import 'utils/theme/themes.dart';
import 'view/access/login/signin.dart';
import 'view/agreements/virtual_card_ts_and_cs.dart';
import 'view/explore/explore_globalone/save/save.dart';
import 'view/home/shared/favourite.dart';
import 'view/shared/payement_notificiation.dart';
import 'view/transact/pay_beneficiary/add_beneficiary.dart';
import 'view/transact/pay_beneficiary/bank_account.dart';
import 'view/transact/pay_beneficiary/internal_beneficiary.dart';
import 'view/transact/pay_beneficiary/pay_beneficiary.dart';
import 'view/transact/transfer_money/transfer_money.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final FavouriteController favouriteController =
      Get.put(FavouriteController());

  @override
  void initState() {
    super.initState();
    favouriteController.loadData();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: Themes().lightTheme,
      darkTheme: Themes().darkTheme,
      themeMode: ThemeMode.system,
      home: Home(),
    );
  }
}
