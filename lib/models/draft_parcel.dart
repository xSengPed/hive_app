/*
# Parcel

  Weight
  TrackingNo // Todo : Gen after object create

Sender

  Name 
  Address

Reciever
  Name 
  Address

*/

import 'package:hive_flutter/hive_flutter.dart';
part "draft_parcel.g.dart";

@HiveType(typeId: 0)
class DraftParcel extends HiveObject {
  @HiveField(0)
  final String trackingNo;
  @HiveField(1)
  final String senderName;
  @HiveField(2)
  final String recieverName;
  @HiveField(3)
  final Address? senderAddress;
  @HiveField(4)
  final Address? reciverAddress;

  DraftParcel(
      {this.trackingNo = "",
      required this.senderName,
      required this.recieverName,
      this.senderAddress,
      this.reciverAddress});
}

@HiveType(typeId: 1)
class Address extends HiveObject {
  @HiveField(0)
  final String no;
  @HiveField(1)
  final String desc;
  @HiveField(2)
  final String district;
  @HiveField(3)
  final String subDistrict;
  @HiveField(4)
  final String province;
  @HiveField(5)
  final String postalCode;

  Address({
    this.no = "",
    this.desc = "",
    this.district = "",
    this.subDistrict = "",
    this.province = "",
    this.postalCode = "",
  });
}
