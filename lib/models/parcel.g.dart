// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parcel.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ParcelAdapter extends TypeAdapter<Parcel> {
  @override
  final int typeId = 0;

  @override
  Parcel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Parcel(
      firstname: fields[0] as String,
      lastname: fields[1] as String,
      weight: fields[2] as double,
      address: fields[3] as Address,
      trackingNo: fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Parcel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.firstname)
      ..writeByte(1)
      ..write(obj.lastname)
      ..writeByte(2)
      ..write(obj.weight)
      ..writeByte(3)
      ..write(obj.address)
      ..writeByte(4)
      ..write(obj.trackingNo);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ParcelAdapter &&
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
      desciption: fields[0] as String,
      distict: fields[1] as String,
      subDistrict: fields[2] as String,
      zipCode: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Address obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.desciption)
      ..writeByte(1)
      ..write(obj.distict)
      ..writeByte(2)
      ..write(obj.subDistrict)
      ..writeByte(3)
      ..write(obj.zipCode);
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
