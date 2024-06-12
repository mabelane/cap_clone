import 'account.dart';
import 'cardmanagement.dart';

class Card {
  String? cardId;
  int? cardNumber;
  int? cvv;
  int? isActive;
  DateTime? expiryDate;
  String? accountId;
  String? cardType;
  MainAccount? account;
  List<CardManagement>? cardManagements;

  Card({
    this.cardId,
    this.cardNumber,
    this.cvv,
    this.isActive,
    this.expiryDate,
    this.accountId,
    this.cardType,
    this.account,
    this.cardManagements,
  });

  factory Card.fromJson(Map<String, dynamic> json) {
    return Card(
      cardId: json['cardId'] as String?,
      cardNumber: json['cardNumber'] as int?,
      cvv: json['cvv'] as int?,
      isActive: json['isActive'] as int?,
      expiryDate: json['expiryDate'] != null
          ? DateTime.parse(json['expiryDate'])
          : null,
      accountId: json['accountId'] as String?,
      cardType: json['cardType'] as String?,
      account: json['account'] != null
          ? MainAccount.fromJson(json['account'])
          : null,
      cardManagements: json['cardManagements'] != null
          ? (json['cardManagements'] as List)
              .map((i) => CardManagement.fromJson(i))
              .toList()
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'cardId': cardId,
      'cardNumber': cardNumber,
      'cvv': cvv,
      'isActive': isActive,
      'expiryDate': expiryDate?.toIso8601String(),
      'accountId': accountId,
      'cardType': cardType,
      'account': account?.toJson(),
      'cardManagements': cardManagements?.map((i) => i.toJson()).toList(),
    };
  }
}
