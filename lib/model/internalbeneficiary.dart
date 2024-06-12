import 'client.dart';

class InternalBeneficiary {
  String? internalBeneficiaryId;
  String? phoneNumber;
  String? name;
  String? internalName;
  String? clientId;
  Client? client;

  InternalBeneficiary({
    this.internalBeneficiaryId,
    this.phoneNumber,
    this.name,
    this.internalName,
    this.clientId,
    this.client,
  });

  factory InternalBeneficiary.fromJson(Map<String, dynamic> json) {
    return InternalBeneficiary(
      internalBeneficiaryId: json['internalBeneficiaryId'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      name: json['name'] as String?,
      internalName: json['internalName'] as String?,
      clientId: json['clientId'] as String?,
      client: json['client'] != null ? Client.fromJson(json['client']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'internalBeneficiaryId': internalBeneficiaryId,
      'phoneNumber': phoneNumber,
      'name': name,
      'internalName': internalName,
      'clientId': clientId,
      'client': client?.toJson(),
    };
  }
}
