// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'season.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SeasonAdapter extends TypeAdapter<Season> {
  @override
  final int typeId = 3;

  @override
  Season read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 1:
        return Season.season1;
      case 2:
        return Season.season2;
      case 3:
        return Season.season3;
      case 4:
        return Season.season4;
      case 5:
        return Season.season5;
      case 6:
        return Season.season6;
      case 7:
        return Season.season7;
      case 8:
        return Season.season8;
      case 9:
        return Season.season9;
      case 10:
        return Season.season10;
      case 11:
        return Season.season11;
      case 12:
        return Season.season12;
      case 13:
        return Season.season13;
      default:
        return Season.season1;
    }
  }

  @override
  void write(BinaryWriter writer, Season obj) {
    switch (obj) {
      case Season.season1:
        writer.writeByte(1);
        break;
      case Season.season2:
        writer.writeByte(2);
        break;
      case Season.season3:
        writer.writeByte(3);
        break;
      case Season.season4:
        writer.writeByte(4);
        break;
      case Season.season5:
        writer.writeByte(5);
        break;
      case Season.season6:
        writer.writeByte(6);
        break;
      case Season.season7:
        writer.writeByte(7);
        break;
      case Season.season8:
        writer.writeByte(8);
        break;
      case Season.season9:
        writer.writeByte(9);
        break;
      case Season.season10:
        writer.writeByte(10);
        break;
      case Season.season11:
        writer.writeByte(11);
        break;
      case Season.season12:
        writer.writeByte(12);
        break;
      case Season.season13:
        writer.writeByte(13);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SeasonAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
