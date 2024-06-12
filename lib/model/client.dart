import 'account.dart';
import 'clientsavingsaccount.dart';
import 'externalbeneficiary.dart';
import 'internalbeneficiary.dart';

class Client {
  String? clientId;
  String? title;
  String? firstName;
  String? middleName;
  String? lastName;
  String? email;
  String? phoneNumber;
  double? idNumber;
  String? addressLine1;
  String? addressLine2;
  String? suburb;
  String? city;
  List<ClientSavingsAccount>? clientSavingsAccounts;
  List<ExternalBeneficiary>? externalBeneficiaries;
  List<InternalBeneficiary>? internalBeneficiaries;
  List<MainAccount>? mainAccounts;

  Client({
    this.clientId,
    this.title,
    this.firstName,
    this.middleName,
    this.lastName,
    this.email,
    this.phoneNumber,
    this.idNumber,
    this.addressLine1,
    this.addressLine2,
    this.suburb,
    this.city,
    this.clientSavingsAccounts,
    this.externalBeneficiaries,
    this.internalBeneficiaries,
    this.mainAccounts,
  });

  factory Client.fromJson(Map<String, dynamic> json) {
    return Client(
      clientId: json['clientId'] as String?,
      title: json['title'] as String?,
      firstName: json['firstName'] as String?,
      middleName: json['middleName'] as String?,
      lastName: json['lastName'] as String?,
      email: json['email'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      idNumber: (json['idNumber'] as num?)?.toDouble(),
      addressLine1: json['addressLine1'] as String?,
      addressLine2: json['addressLine2'] as String?,
      suburb: json['suburb'] as String?,
      city: json['city'] as String?,
      clientSavingsAccounts: json['clientSavingsAccounts'] != null
          ? (json['clientSavingsAccounts'] as List)
              .map((i) => ClientSavingsAccount.fromJson(i))
              .toList()
          : null,
      externalBeneficiaries: json['externalBeneficiaries'] != null
          ? (json['externalBeneficiaries'] as List)
              .map((i) => ExternalBeneficiary.fromJson(i))
              .toList()
          : null,
      internalBeneficiaries: json['internalBeneficiaries'] != null
          ? (json['internalBeneficiaries'] as List)
              .map((i) => InternalBeneficiary.fromJson(i))
              .toList()
          : null,
      mainAccounts: json['mainAccounts'] != null
          ? (json['mainAccounts'] as List)
              .map((i) => MainAccount.fromJson(i))
              .toList()
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'clientId': clientId,
      'title': title,
      'firstName': firstName,
      'middleName': middleName,
      'lastName': lastName,
      'email': email,
      'phoneNumber': phoneNumber,
      'idNumber': idNumber,
      'addressLine1': addressLine1,
      'addressLine2': addressLine2,
      'suburb': suburb,
      'city': city,
      'clientSavingsAccounts':
          clientSavingsAccounts?.map((i) => i.toJson()).toList(),
      'externalBeneficiaries':
          externalBeneficiaries?.map((i) => i.toJson()).toList(),
      'internalBeneficiaries':
          internalBeneficiaries?.map((i) => i.toJson()).toList(),
      'mainAccounts': mainAccounts?.map((i) => i.toJson()).toList(),
    };
  }
}
