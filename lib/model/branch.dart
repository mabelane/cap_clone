import 'account.dart';

class Branch {
  String? branchId;
  String? branchCode;
  String? name;
  String? address;
  String? city;
  int? branchManager;
  List<MainAccount>? mainAccounts;

  Branch({
    this.branchId,
    this.branchCode,
    this.name,
    this.address,
    this.city,
    this.branchManager,
    this.mainAccounts,
  });

  factory Branch.fromJson(Map<String, dynamic> json) {
    return Branch(
      branchId: json['branchId'] as String?,
      branchCode: json['branchCode'] as String?,
      name: json['name'] as String?,
      address: json['address'] as String?,
      city: json['city'] as String?,
      branchManager: json['branchManager'] as int?,
      mainAccounts: json['mainAccounts'] != null
          ? (json['mainAccounts'] as List)
              .map((i) => MainAccount.fromJson(i))
              .toList()
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'branchId': branchId,
      'branchCode': branchCode,
      'name': name,
      'address': address,
      'city': city,
      'branchManager': branchManager,
      'mainAccounts': mainAccounts?.map((i) => i.toJson()).toList(),
    };
  }
}
