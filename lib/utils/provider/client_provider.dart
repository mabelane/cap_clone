import 'dart:convert';

import 'package:get/get.dart';

class ClientProvider extends GetConnect {
  Future<Response> getAccountHolder(int accountNumber) => post(
      "http://localhost:5028/api/Client/card-holder/",
      jsonEncode(accountNumber));
}
