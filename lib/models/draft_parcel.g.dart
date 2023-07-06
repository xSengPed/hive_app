// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'draft_parcel.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DraftParcelAdapter extends TypeAdapter<DraftParcel> {
  @override
  final int typeId = 0;

  @override
  DraftParcel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DraftParcel(
      trackingNo: fields[0] as String,
      senderName: fields[1] as String,
      recieverName: fields[2] as String,
      senderAddress: fields[3] as Address?,
      reciverAddress: fields[4] as Address?,
    );
  }

  @override
  void write(BinaryWriter writer, DraftParcel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.trackingNo)
      ..writeByte(1)
      ..write(obj.senderName)
      ..writeByte(2)
      ..write(obj.recieverName)
      ..writeByte(3)
      ..write(obj.senderAddress)
      ..writeByte(4)
      ..write(obj.reciverAddress);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DraftParcelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class AddressAdapter extends TypeAdapter<Address> {
  @override
  final int typeId = 1;

  @override
  Address read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Address(
      no: fields[0] as String,
      desc: fields[1] as String,
      district: fields[2] as String,
      subDistrict: fields[3] as String,
      province: fields[4] as String,
      postalCode: fields[5] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Address obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.no)
      ..writeByte(1)
      ..write(obj.desc)
      ..writeByte(2)
      ..write(obj.district)
      ..writeByte(3)
      ..write(obj.subDistrict)
      ..writeByte(4)
      ..write(obj.province)
      ..writeByte(5)
      ..write(obj.postalCode);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AddressAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
