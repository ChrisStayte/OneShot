// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PlayerAdapter extends TypeAdapter<Player> {
  @override
  final int typeId = 0;

  @override
  Player read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Player(
      uid: fields[1] as int,
      platform: fields[2] as Platform,
      name: fields[0] as String,
      lastFetched: fields[3] as DateTime,
      favorite: fields[4] as bool,
      level: fields[5] as int?,
      toNextLevelPercent: fields[6] as int?,
      internalUpdateCount: fields[7] as int?,
      isBanned: fields[8] as bool?,
      banRemainingSeconds: fields[9] as int?,
      banReason: fields[10] as String?,
      rankScore: fields[11] as int?,
      rankName: fields[12] as String?,
      rankDiv: fields[13] as int?,
      ladderPosPlatform: fields[14] as int?,
      rankImage: fields[15] as String?,
      rankedSeason: fields[16] as String?,
      battlePassLevel: fields[17] as int?,
      kills: fields[18] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, Player obj) {
    writer
      ..writeByte(19)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.uid)
      ..writeByte(2)
      ..write(obj.platform)
      ..writeByte(3)
      ..write(obj.lastFetched)
      ..writeByte(4)
      ..write(obj.favorite)
      ..writeByte(5)
      ..write(obj.level)
      ..writeByte(6)
      ..write(obj.toNextLevelPercent)
      ..writeByte(7)
      ..write(obj.internalUpdateCount)
      ..writeByte(8)
      ..write(obj.isBanned)
      ..writeByte(9)
      ..write(obj.banRemainingSeconds)
      ..writeByte(10)
      ..write(obj.banReason)
      ..writeByte(11)
      ..write(obj.rankScore)
      ..writeByte(12)
      ..write(obj.rankName)
      ..writeByte(13)
      ..write(obj.rankDiv)
      ..writeByte(14)
      ..write(obj.ladderPosPlatform)
      ..writeByte(15)
      ..write(obj.rankImage)
      ..writeByte(16)
      ..write(obj.rankedSeason)
      ..writeByte(17)
      ..write(obj.battlePassLevel)
      ..writeByte(18)
      ..write(obj.kills);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PlayerAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
