import 'account.dart';
import 'clientsavingsaccount.dart';
import 'transactiontype.dart';

class Transaction {
  String? transactionId;
  int? fromAccount;
  int? toAccount;
  double? amount;
  String? transactionTypeId;
  DateTime? transactionDate;
  String? description;
  MainAccount? fromAccount1;
  ClientSavingsAccount? fromAccountNavigation;
  MainAccount? toAccount1;
  ClientSavingsAccount? toAccountNavigation;
  TransactionType? transactionType;

  Transaction({
    this.transactionId,
    this.fromAccount,
    this.toAccount,
    this.amount,
    this.transactionTypeId,
    this.transactionDate,
    this.description,
    this.fromAccount1,
    this.fromAccountNavigation,
    this.toAccount1,
    this.toAccountNavigation,
    this.transactionType,
  });

  factory Transaction.fromJson(Map<String, dynamic> json) {
    return Transaction(
      transactionId: json['transactionId'] as String?,
      fromAccount: json['fromAccount'] as int?,
      toAccount: json['toAccount'] as int?,
      amount: (json['amount'] as num?)?.toDouble(),
      transactionTypeId: json['transactionTypeId'] as String?,
      transactionDate: json['transactionDate'] != null
          ? DateTime.parse(json['transactionDate'])
          : null,
      description: json['description'] as String?,
      fromAccount1: json['fromAccount1'] != null
          ? MainAccount.fromJson(json['fromAccount1'])
          : null,
      fromAccountNavigation: json['fromAccountNavigation'] != null
          ? ClientSavingsAccount.fromJson(json['fromAccountNavigation'])
          : null,
      toAccount1: json['toAccount1'] != null
          ? MainAccount.fromJson(json['toAccount1'])
          : null,
      toAccountNavigation: json['toAccountNavigation'] != null
          ? ClientSavingsAccount.fromJson(json['toAccountNavigation'])
          : null,
      transactionType: json['transactionType'] != null
          ? TransactionType.fromJson(json['transactionType'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'transactionId': transactionId,
      'fromAccount': fromAccount,
      'toAccount': toAccount,
      'amount': amount,
      'transactionTypeId': transactionTypeId,
      'transactionDate': transactionDate?.toIso8601String(),
      'description': description,
      'fromAccount1': fromAccount1?.toJson(),
      'fromAccountNavigation': fromAccountNavigation?.toJson(),
      'toAccount1': toAccount1?.toJson(),
      'toAccountNavigation': toAccountNavigation?.toJson(),
      'transactionType': transactionType?.toJson(),
    };
  }
}
