import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../model/transaction_elements.dart';
import '../utils/constant/icon_path.dart';
import '../utils/constant/temp_placeholder.dart';
import '../view/transact/buy_electricity/buy_electricity.dart';
import '../view/transact/buy_prepaid/buy_prepaid_mobile.dart';
import '../view/transact/buy_vouchers/buy_vouchers.dart';
import '../view/transact/pay_beneficiary/pay_beneficiary.dart';
import '../view/transact/pay_me/pay_me.dart';
import '../view/transact/paybills/pay_bills.dart';
import '../view/transact/payshap/pay_shap.dart';
import '../view/transact/play_lotto/play_lotto.dart';
import '../view/transact/renew_license_disk/renew_license_disk.dart';
import '../view/transact/scan_to_pay/scan_to_pay.dart';
import '../view/transact/send_cash/send_cash.dart';
import '../view/transact/transfer_money/transfer_money.dart';

class FavouriteController extends GetxController {
  final myFavourites = <TransactionElements>[].obs;
  final chooseFavourite = <TransactionElements>[].obs;
  final int favLimit = 6;

  final options = <TransactionElements>[
    TransactionElements(
        title: "Pay beneficiary",
        icon: payBeneficiaryIcon,
        page: const PayBeneficiary()),
    TransactionElements(
        title: "PayShap", icon: payShapIcon, page: const PayShap()),
    TransactionElements(
        title: "Pay bills", icon: payBillsIcon, page: const PayBills()),
    TransactionElements(
        title: "Buy prepaid mobile",
        icon: buyPrepaidIcon,
        page: const BuyPrepaidMobile()),
    TransactionElements(
        title: "Buy electricity",
        icon: electricityIcon,
        page: const BuyElectricity()),
    TransactionElements(
        title: "Play Lotto", icon: lottoIcon, page: const PlayLotto()),
    TransactionElements(
        title: "Buy vouchers", icon: vouchersIcon, page: const BuyVouchers()),
    TransactionElements(
        title: "Renew Lisence disc",
        icon: licenceIcon,
        page: const RenewLicenseDisk()),
    TransactionElements(
        title: "Send cash", icon: sendCashIcon, page: const SendCash()),
    TransactionElements(
        title: "Transfer money", icon: transferIcon, page: TransferMoney()),
    TransactionElements(
        title: "Scan to pay", icon: scanToPayIcon, page: const ScanToPay()),
    TransactionElements(title: "Pay me", icon: payMeIcon, page: const PayMe()),
  ].obs;

  @override
  void onInit() {
    addInitialItems();
    loadData();

    super.onInit();
  }

  void addInitialItems() {
    chooseFavourite.addAll(options);
    // saveData();
  }

  // Future<void> saveMyFavouriteData() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   final myFavouriteData = myFavourites.map((e) {
  //     return "${e.title}, ${e.icon?.toString()}, ${e.page.toString()}";
  //   }).toList();
  //   await prefs.setStringList("chooseFavourite", myFavouriteData);
  // }

  Future<void> saveMyFavouriteData() async {
    final box = GetStorage();
    await box.write(
        "myFavourites", myFavourites.map((e) => e.toString()).toList());
  }

  Future<void> saveChooseFavouriteData() async {
    final box = GetStorage();
    await box.write(
        "chooseFavourite", chooseFavourite.map((e) => e.toString()).toList());
  }
  // Future<void> saveChooseFavouriteData() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   final chooseFavouriteData = chooseFavourite.map((e) {
  //     return "${e.title}, ${e.icon?.toString()}, ${e.page.toString()}";
  //   }).toList();
  //   await prefs.setStringList("myFavourites", chooseFavouriteData);
  // }

  Future<void> clearData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove("myFavourites");
  }

  Future<void> loadData() async {
    final box = GetStorage();
    final myFavouritesTitles = box.read<List>("myFavourites") ?? [];

    myFavourites.clear();

    myFavourites.value = myFavouritesTitles
        .map((title) =>
            TransactionElements(title: title, page: const TempPlaceholder()))
        .toList()
        .obs;

    if (chooseFavourite.isEmpty) {
      options.forEach((option) {
        if (!myFavourites.any((element) => element.title == option.title)) {
          chooseFavourite.add(option);
        }
      });
    }
  }

  void addItem(TransactionElements item) {
    if (myFavourites.length < favLimit) {
      myFavourites.add(item);
      saveMyFavouriteData();
    } else {
      Get.snackbar("Error", "Cannot add more than $favLimit items");
    }
  }

  void removeItem(TransactionElements item) {
    if (myFavourites.contains(item)) {
      myFavourites.remove(item);
      chooseFavourite.add(item);
    } else if (chooseFavourite.contains(item)) {
      if (myFavourites.length < favLimit) {
        chooseFavourite.remove(item);
      }
      addItem(item);
    }
    saveMyFavouriteData();
  }
}
