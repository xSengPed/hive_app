import 'package:hive_flutter/hive_flutter.dart';

part "parcel.g.dart";

@HiveType(typeId: 0)
class Parcel extends HiveObject {
  @HiveField(0)
  final String firstname;
  @HiveField(1)
  final String lastname;
  @HiveField(2)
  final double weight;
  @HiveField(3)
  final Address address;
  @HiveField(4)
  final String trackingNo;

  Parcel({
    required this.firstname,
    required this.lastname,
    this.weight = 0.0,
    required this.address,
    required this.trackingNo,
  });
}

@HiveType(typeId: 1)
class Address extends HiveObject {
  @HiveField(0)
  final String desciption;
  @HiveField(1)
  final String distict;
  @HiveField(2)
  final String subDistrict;
  @HiveField(3)
  final String zipCode;

  Address(
      {this.desciption = "",
      this.distict = "",
      this.subDistrict = "",
      this.zipCode = ""});
}
