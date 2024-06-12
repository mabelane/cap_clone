import 'transactions.dart';

class TransactionType {
  String? transactionTypeId;
  String? name;
  String? transactionCategory;
  List<Transaction>? transactions;

  TransactionType({
    this.transactionTypeId,
    this.name,
    this.transactionCategory,
    this.transactions,
  });

  factory TransactionType.fromJson(Map<String, dynamic> json) {
    return TransactionType(
      transactionTypeId: json['transactionTypeId'] as String?,
      name: json['name'] as String?,
      transactionCategory: json['transactionCategory'] as String?,
      transactions: json['transactions'] != null
          ? (json['transactions'] as List)
              .map((i) => Transaction.fromJson(i))
              .toList()
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'transactionTypeId': transactionTypeId,
      'name': name,
      'transactionCategory': transactionCategory,
      'transactions': transactions?.map((i) => i.toJson()).toList(),
    };
  }
}
