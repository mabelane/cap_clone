import 'client.dart';

class ExternalBeneficiary {
  String? externalBeneficiaryId;
  String? beneficiaryName;
  int? accountNumber;
  String? reference;
  String? bank;
  String? clientId;
  Client? client;

  ExternalBeneficiary({
    this.externalBeneficiaryId,
    this.beneficiaryName,
    this.accountNumber,
    this.reference,
    this.bank,
    this.clientId,
    this.client,
  });

  factory ExternalBeneficiary.fromJson(Map<String, dynamic> json) {
    return ExternalBeneficiary(
      externalBeneficiaryId: json['externalBeneficiaryId'] as String?,
      beneficiaryName: json['beneficiaryName'] as String?,
      accountNumber: json['accountNumber'] as int?,
      reference: json['reference'] as String?,
      bank: json['bank'] as String?,
      clientId: json['clientId'] as String?,
      client: json['client'] != null ? Client.fromJson(json['client']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'externalBeneficiaryId': externalBeneficiaryId,
      'beneficiaryName': beneficiaryName,
      'accountNumber': accountNumber,
      'reference': reference,
      'bank': bank,
      'clientId': clientId,
      'client': client?.toJson(),
    };
  }
}
