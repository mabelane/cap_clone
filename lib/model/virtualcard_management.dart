import 'virtual_card.dart';

class VirtualCardManagement {
  int? id;
  double? withdrawal;
  double? machinePurchase;
  double? online;
  String? virtualId;
  VirtualCard? virtual;

  VirtualCardManagement({
    this.id,
    this.withdrawal,
    this.machinePurchase,
    this.online,
    this.virtualId,
    this.virtual,
  });

  factory VirtualCardManagement.fromJson(Map<String, dynamic> json) {
    return VirtualCardManagement(
      id: json['id'] as int?,
      withdrawal: (json['withdrawal'] as num?)?.toDouble(),
      machinePurchase: (json['machinePurchase'] as num?)?.toDouble(),
      online: (json['online'] as num?)?.toDouble(),
      virtualId: json['virtualId'] as String?,
      virtual: json['virtual'] != null
          ? VirtualCard.fromJson(json['virtual'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'withdrawal': withdrawal,
      'machinePurchase': machinePurchase,
      'online': online,
      'virtualId': virtualId,
      'virtual': virtual?.toJson(),
    };
  }
}
