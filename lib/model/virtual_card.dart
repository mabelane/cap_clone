import 'account.dart';
import 'virtualcard_management.dart';

class VirtualCard {
  String? virtualId;
  int? cardNumber;
  int? cvv;
  int? isActive;
  DateTime? expireDate;
  String? accountId;
  String? cardType;
  MainAccount? account;
  List<VirtualCardManagement>? virtualCardManagements;

  VirtualCard({
    this.virtualId,
    this.cardNumber,
    this.cvv,
    this.isActive,
    this.expireDate,
    this.accountId,
    this.cardType,
    this.account,
    this.virtualCardManagements,
  });

  factory VirtualCard.fromJson(Map<String, dynamic> json) {
    return VirtualCard(
      virtualId: json['virtualId'] as String?,
      cardNumber: json['cardNumber'] as int?,
      cvv: json['cvv'] as int?,
      isActive: json['isActive'] as int?,
      expireDate: json['expireDate'] != null
          ? DateTime.parse(json['expireDate'])
          : null,
      accountId: json['accountId'] as String?,
      cardType: json['cardType'] as String?,
      account: json['account'] != null
          ? MainAccount.fromJson(json['account'])
          : null,
      virtualCardManagements: json['virtualCardManagements'] != null
          ? (json['virtualCardManagements'] as List)
              .map((i) => VirtualCardManagement.fromJson(i))
              .toList()
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'virtualId': virtualId,
      'cardNumber': cardNumber,
      'cvv': cvv,
      'isActive': isActive,
      'expireDate': expireDate?.toIso8601String(),
      'accountId': accountId,
      'cardType': cardType,
      'account': account?.toJson(),
      'virtualCardManagements':
          virtualCardManagements?.map((i) => i.toJson()).toList(),
    };
  }
}
