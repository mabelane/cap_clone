import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:http/http.dart' as http;
import '../model/account.dart';
import '../utils/provider/account_provider.dart';
import '../utils/provider/client_provider.dart';
import '../view/access/login/verify_pin.dart';
import '../view/access/open_account/register.dart';
import '../view/home/home.dart';

class AccountController extends GetxController with StateMixin {
  final accountNumberController = TextEditingController().obs;
  final pinController = TextEditingController().obs;
  AccountProvider accountProvider = Get.put(AccountProvider());
  ClientProvider clientProvider = Get.put(ClientProvider());
  var cardHolder = "".obs;
  int accountNumber = 0;
  var savingsAccount = MainAccount().obs;

  Future<String> getCardHolder() async {
    final response = await clientProvider.getAccountHolder(accountNumber);

    if (response.statusCode == 200) {
      return cardHolder.value = response.body["cardHolder"];
    }
    return cardHolder.value = "";
  }

  void verifyPin() async {
    final response = await accountProvider.verifyPin(
        accountNumber, int.parse(pinController.value.text));
    getCardHolder();

    if (response.statusCode == 200) {
      Get.to(() => const Home());
    } else {
      Get.to(() => const Register());
    }
  }

  void verifyAccount() async {
    if (accountNumberController.value.text != "") {
      accountNumber = int.parse(accountNumberController.value.text);
    } else {
      accountNumber = 0;
    }

    final response = await accountProvider.getAccount(accountNumber);
    if (response.statusCode == 200) {
      savingsAccount.value = MainAccount.fromJson(response.body["account"]);
      Get.to(() => const VerifyPin());
    } else {
      Get.to(() => const Register());
    }
  }
}
