import 'package:flutter/material.dart';
import '../../model/transaction_elements.dart';
import '../../utils/constant/icon_path.dart';
import '../../utils/constant/list_container.dart';
import '../shared/single_tab_scafold.dart';
import 'buy_electricity/buy_electricity.dart';
import 'buy_prepaid/buy_prepaid_mobile.dart';
import 'buy_vouchers/buy_vouchers.dart';
import 'capitec_pay/capitec_pay.dart';
import 'debit_orders/debit_orders.dart';
import 'pay_beneficiary/pay_beneficiary.dart';
import 'pay_me/pay_me.dart';
import 'paybills/pay_bills.dart';
import 'payshap/pay_shap.dart';
import 'play_lotto/play_lotto.dart';
import 'recurring_future-dated/recurring_future_dated.dart';
import 'renew_license_disk/renew_license_disk.dart';
import 'sars/sars.dart';
import 'scan_to_pay/scan_to_pay.dart';
import 'send_cash/send_cash.dart';
import 'transfer_money/transfer_money.dart';

class Transact extends StatelessWidget {
  Transact({Key? key}) : super(key: key);

  final bills = [
    TransactionElements(
        title: "Pay beneficiary",
        icon: payBeneficiaryIcon,
        page: const PayBeneficiary()),
    TransactionElements(
        title: "PayShap", icon: payShapIcon, page: const PayShap()),
    TransactionElements(
        title: "Pay bills", icon: payBillsIcon, page: const PayBills()),
  ];

  final prepaid = [
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
  ];

  final transfer = [
    TransactionElements(
        title: "Transfer money", icon: transferIcon, page: TransferMoney()),
    TransactionElements(
        title: "Recurring/future-date",
        icon: recurringIcon,
        page: const RecurringFutureDated()),
    TransactionElements(
        title: "Send cash", icon: sendCashIcon, page: const SendCash()),
  ];

  final pay = [
    TransactionElements(
        title: "Scan to pay", icon: scanToPayIcon, page: const ScanToPay()),
    TransactionElements(title: "Pay me", icon: payMeIcon, page: const PayMe()),
    TransactionElements(
        title: "Capitec Pay", icon: capitecPayIcon, page: const CapitecPay()),
  ];

  final other = [
    TransactionElements(
        title: "Debit orders", icon: debitOrderIcon, page: const DebitOrders()),
    TransactionElements(
        title: "SARS eFilling", icon: sarsIcon, page: const Sars()),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleTabScafold(
        titleWidget: const Text("Transact"),
        bodyWidget: ListView(
          children: [
            ListContainer(pages: bills),
            const SizedBox(height: 20),
            ListContainer(pages: prepaid),
            const SizedBox(height: 20),
            ListContainer(pages: transfer),
            const SizedBox(height: 20),
            ListContainer(pages: pay),
            const SizedBox(height: 20),
            ListContainer(pages: other),
          ],
        ));
  }
}
