import 'package:hive/hive.dart';

part 'season.g.dart';

@HiveType(typeId: 3)
enum Season {
  @HiveField(1)
  season1,

  @HiveField(2)
  season2,

  @HiveField(3)
  season3,

  @HiveField(4)
  season4,

  @HiveField(5)
  season5,

  @HiveField(6)
  season6,

  @HiveField(7)
  season7,

  @HiveField(8)
  season8,

  @HiveField(9)
  season9,

  @HiveField(10)
  season10,

  @HiveField(11)
  season11,

  @HiveField(12)
  season12,

  @HiveField(13)
  season13;

  int get seasonNumber => int.parse(name.replaceAll('season', ''));
}
