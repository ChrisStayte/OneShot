// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'platform.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PlatformAdapter extends TypeAdapter<Platform> {
  @override
  final int typeId = 2;

  @override
  Platform read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return Platform.origin;
      case 1:
        return Platform.playstation;
      case 2:
        return Platform.xbox;
      default:
        return Platform.origin;
    }
  }

  @override
  void write(BinaryWriter writer, Platform obj) {
    switch (obj) {
      case Platform.origin:
        writer.writeByte(0);
        break;
      case Platform.playstation:
        writer.writeByte(1);
        break;
      case Platform.xbox:
        writer.writeByte(2);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PlatformAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
