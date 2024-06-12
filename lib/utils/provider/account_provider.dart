import 'dart:convert';
import 'package:get/get.dart';

class AccountProvider extends GetConnect {
  Future<Response> getAccount(int accountNumber) => post(
      "http://localhost:5028/api/mainaccount/verify-account/",
      jsonEncode(accountNumber));

  Future<Response> verifyPin(int accountNumber, int pin) => post(
      "http://localhost:5028/api/mainaccount/verify-pin/",
      jsonEncode({"accountNumber": accountNumber, "pin": pin}));
}
