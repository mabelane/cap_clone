import 'card.dart';

class CardManagement {
  String? cardManagementId;
  String? cardId;
  int? tapToPay;
  int? scanToPay;
  double? withdrawal;
  double? machinePurchase;
  double? online;
  Card? card;

  CardManagement({
    this.cardManagementId,
    this.cardId,
    this.tapToPay,
    this.scanToPay,
    this.withdrawal,
    this.machinePurchase,
    this.online,
    this.card,
  });

  factory CardManagement.fromJson(Map<String, dynamic> json) {
    return CardManagement(
      cardManagementId: json['cardManagementId'] as String?,
      cardId: json['cardId'] as String?,
      tapToPay: json['tapToPay'] as int?,
      scanToPay: json['scanToPay'] as int?,
      withdrawal: (json['withdrawal'] as num?)?.toDouble(),
      machinePurchase: (json['machinePurchase'] as num?)?.toDouble(),
      online: (json['online'] as num?)?.toDouble(),
      card: json['card'] != null ? Card.fromJson(json['card']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'cardManagementId': cardManagementId,
      'cardId': cardId,
      'tapToPay': tapToPay,
      'scanToPay': scanToPay,
      'withdrawal': withdrawal,
      'machinePurchase': machinePurchase,
      'online': online,
      'card': card?.toJson(),
    };
  }
}
