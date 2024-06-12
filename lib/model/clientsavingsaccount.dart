import 'client.dart';
import 'transactions.dart';

class ClientSavingsAccount {
  int? clientSavingsId;
  String? accountName;
  int? accountNumber;
  double? currentBalance;
  double? interestRate;
  double? interestEarned;
  double? monthlyFees;
  DateTime? dateOpened;
  int? status;
  String? accountType;
  String? clientId;
  Client? client;
  List<Transaction>? transactionFromAccountNavigations;
  List<Transaction>? transactionToAccountNavigations;

  ClientSavingsAccount({
    this.clientSavingsId,
    this.accountName,
    this.accountNumber,
    this.currentBalance,
    this.interestRate,
    this.interestEarned,
    this.monthlyFees,
    this.dateOpened,
    this.status,
    this.accountType,
    this.clientId,
    this.client,
    this.transactionFromAccountNavigations,
    this.transactionToAccountNavigations,
  });

  factory ClientSavingsAccount.fromJson(Map<String, dynamic> json) {
    return ClientSavingsAccount(
      clientSavingsId: json['clientSavingsId'] as int?,
      accountName: json['accountName'] as String?,
      accountNumber: json['accountNumber'] as int?,
      currentBalance: (json['currentBalance'] as num?)?.toDouble(),
      interestRate: (json['interestRate'] as num?)?.toDouble(),
      interestEarned: (json['interestEarned'] as num?)?.toDouble(),
      monthlyFees: (json['monthlyFees'] as num?)?.toDouble(),
      dateOpened: json['dateOpened'] != null
          ? DateTime.parse(json['dateOpened'])
          : null,
      status: json['status'] as int?,
      accountType: json['accountType'] as String?,
      clientId: json['clientId'] as String?,
      client: json['client'] != null ? Client.fromJson(json['client']) : null,
      transactionFromAccountNavigations:
          json['transactionFromAccountNavigations'] != null
              ? (json['transactionFromAccountNavigations'] as List)
                  .map((i) => Transaction.fromJson(i))
                  .toList()
              : null,
      transactionToAccountNavigations:
          json['transactionToAccountNavigations'] != null
              ? (json['transactionToAccountNavigations'] as List)
                  .map((i) => Transaction.fromJson(i))
                  .toList()
              : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'clientSavingsId': clientSavingsId,
      'accountName': accountName,
      'accountNumber': accountNumber,
      'currentBalance': currentBalance,
      'interestRate': interestRate,
      'interestEarned': interestEarned,
      'monthlyFees': monthlyFees,
      'dateOpened': dateOpened?.toIso8601String(),
      'status': status,
      'accountType': accountType,
      'clientId': clientId,
      'client': client?.toJson(),
      'transactionFromAccountNavigations':
          transactionFromAccountNavigations?.map((i) => i.toJson()).toList(),
      'transactionToAccountNavigations':
          transactionToAccountNavigations?.map((i) => i.toJson()).toList(),
    };
  }
}
