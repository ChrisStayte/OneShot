import 'package:oneshot/enums/platform.dart';
import 'package:oneshot/enums/season.dart';

class Player {
  String name;
  final int uid;
  final Platform platform;
  int? level;
  int? toNextLevelPercent;
  int? internalUpdateCount;
  bool? isBanned;
  int? banRemainingSeconds;
  String? banReason;
  int? rankScore;
  String? rankName;
  int? rankDiv;
  int? ladderPosPlatform;
  String? rankImage;
  String? rankedSeason;
  int? battlePassLevel;

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
  });
}
