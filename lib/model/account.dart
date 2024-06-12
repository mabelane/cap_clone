import 'branch.dart';
import 'card.dart';
import 'client.dart';
import 'transactions.dart';
import 'virtual_card.dart';

class MainAccount {
  String? accountId;
  String? accountName;
  int? accountNumber;
  String? intNumber;
  String? branchId;
  int? isConfigured;
  String? clientId;
  double? availableBalance;
  double? currentBalance;
  double? interestRate;
  double? interestEarned;
  double? monthlyFees;
  DateTime? dateOpened;
  int? status;
  String? accountType;
  int? remotePin;
  Branch? branch;
  Card? card;
  Client? client;
  List<Transaction>? transactionFromAccount;
  List<Transaction>? transactionToAccount;
  VirtualCard? virtualCard;

  MainAccount({
    this.accountId,
    this.accountName,
    this.accountNumber,
    this.intNumber,
    this.branchId,
    this.isConfigured,
    this.clientId,
    this.availableBalance,
    this.currentBalance,
    this.interestRate,
    this.interestEarned,
    this.monthlyFees,
    this.dateOpened,
    this.status,
    this.accountType,
    this.remotePin,
    this.branch,
    this.card,
    this.client,
    this.transactionFromAccount,
    this.transactionToAccount,
    this.virtualCard,
  });

  factory MainAccount.fromJson(Map<String, dynamic> json) {
    // Debug: Print the JSON data to verify its structure
    print('JSON data: $json');

    // Helper function to parse list of transactions
    List<Transaction>? parseTransactions(dynamic transactionsJson) {
      if (transactionsJson == null) {
        return [];
      }
      if (transactionsJson is List) {
        return transactionsJson
            .map((item) => Transaction.fromJson(item as Map<String, dynamic>))
            .toList();
      }
      return [];
    }

    return MainAccount(
      accountId: json['accountId'] as String?,
      accountName: json['accountName'] as String?,
      accountNumber: json['accountNumber'] as int?,
      intNumber: json['intNumber'] as String?,
      branchId: json['branchId'] as String?,
      isConfigured: json['isConfigured'] as int?,
      clientId: json['clientId'] as String?,
      availableBalance: (json['availableBalance'] as num?)?.toDouble(),
      currentBalance: (json['currentBalance'] as num?)?.toDouble(),
      interestRate: (json['interestRate'] as num?)?.toDouble(),
      interestEarned: (json['interestEarned'] as num?)?.toDouble(),
      monthlyFees: (json['monthlyFees'] as num?)?.toDouble(),
      dateOpened: json['dateOpened'] != null
          ? DateTime.parse(json['dateOpened'])
          : null,
      status: json['status'] as int?,
      accountType: json['accountType'] as String?,
      remotePin: json['remotePin'] as int?,
      branch: json['branch'] != null ? Branch.fromJson(json['branch']) : null,
      card: json['card'] != null ? Card.fromJson(json['card']) : null,
      client: json['client'] != null ? Client.fromJson(json['client']) : null,
      transactionFromAccount: parseTransactions(json['transactionFromAccount']),
      transactionToAccount: parseTransactions(json['transactionToAccount']),
      virtualCard: json['virtualCard'] != null
          ? VirtualCard.fromJson(json['virtualCard'] as Map<String, dynamic>)
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'accountId': accountId,
      'accountName': accountName,
      'accountNumber': accountNumber,
      'intNumber': intNumber,
      'branchId': branchId,
      'isConfigured': isConfigured,
      'clientId': clientId,
      'availableBalance': availableBalance,
      'currentBalance': currentBalance,
      'interestRate': interestRate,
      'interestEarned': interestEarned,
      'monthlyFees': monthlyFees,
      'dateOpened': dateOpened?.toIso8601String(),
      'status': status,
      'accountType': accountType,
      'remotePin': remotePin,
      'branch': branch?.toJson(),
      'card': card?.toJson(),
      'client': client?.toJson(),
      'transactionFromAccount':
          transactionFromAccount?.map((i) => i.toJson()).toList(),
      'transactionToAccount':
          transactionToAccount?.map((i) => i.toJson()).toList(),
      'virtualCard': virtualCard?.toJson(),
    };
  }
}
