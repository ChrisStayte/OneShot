import 'package:hive/hive.dart';
import 'package:oneshot/enums/platform.dart';
import 'package:oneshot/enums/season.dart';

part 'player.g.dart';

@HiveType(typeId: 0)
class Player extends HiveObject {
  @HiveField(0)
  String name;

  @HiveField(1)
  final int uid;

  @HiveField(2)
  final Platform platform;

  @HiveField(3)
  DateTime lastFetched;

  @HiveField(4)
  bool favorite;

  @HiveField(5)
  int? level;

  @HiveField(6)
  int? toNextLevelPercent;

  @HiveField(7)
  int? internalUpdateCount;

  @HiveField(8)
  bool? isBanned;

  @HiveField(9)
  int? banRemainingSeconds;

  @HiveField(10)
  String? banReason;

  @HiveField(11)
  int? rankScore;

  @HiveField(12)
  String? rankName;

  @HiveField(13)
  int? rankDiv;

  @HiveField(14)
  int? ladderPosPlatform;

  @HiveField(15)
  String? rankImage;

  @HiveField(16)
  String? rankedSeason;

  @HiveField(17)
  int? battlePassLevel;

  @HiveField(18)
  int? kills;

  Map<Season, int> wins = {
    Season.season1: 0,
    Season.season2: 0,
    Season.season3: 0,
    Season.season4: 0,
    Season.season5: 0,
    Season.season6: 0,
    Season.season7: 0,
    Season.season8: 0,
    Season.season9: 0,
    Season.season10: 0,
    Season.season11: 0,
    Season.season12: 0,
    Season.season13: 0,
  };

  Map<Season, int> battlePassSeasonLevels = {
    Season.season1: 0,
    Season.season2: 0,
    Season.season3: 0,
    Season.season4: 0,
    Season.season5: 0,
    Season.season6: 0,
    Season.season7: 0,
    Season.season8: 0,
    Season.season9: 0,
    Season.season10: 0,
    Season.season11: 0,
    Season.season12: 0,
    Season.season13: 0,
  };

  Player({
    required this.uid,
    required this.platform,
    required this.name,
    required this.lastFetched,
    this.favorite = false,
    this.level,
    this.toNextLevelPercent,
    this.internalUpdateCount,
    this.isBanned,
    this.banRemainingSeconds,
    this.banReason,
    this.rankScore,
    this.rankName,
    this.rankDiv,
    this.ladderPosPlatform,
    this.rankImage,
    this.rankedSeason,
    this.battlePassLevel,
    this.kills,
  });

  factory Player.fromApi(Map<String, dynamic> body) {
    return Player(
      uid: body['global']['uid'],
      platform: Platform.values.firstWhere((element) =>
          element.apiString.toLowerCase() ==
          body['global']['platform'].toString().toLowerCase()),
      name: body['global']['name'],
      lastFetched: DateTime.now(),
      level: body['global']['level'],
      toNextLevelPercent: body['global']['toNextLevelPercent'],
      isBanned: body['global']['bans']['isActive'],
      internalUpdateCount: body['global']['internalUpdateCount'],
      battlePassLevel: int.parse(body['global']['battlepass']['level']),
      kills: body['total']['kills']['value'],
    );
  }
}
