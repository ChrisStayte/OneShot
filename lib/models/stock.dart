import 'package:oneshot/enums/stock_type.dart';
import 'package:oneshot/enums/weapons.dart';
import 'package:oneshot/models/attachment.dart';

class Stock extends Attachment {
  StockType stockType;
  List<Weapons> compatibleWeapons;
  int percentLessAdsTime;
  int percentLessDeployHolsterTime;
  int percentLessRaiseLowerTime;
  int percentLessAimDrift;
  int percentSlowerDriftSpeedSniper;
  double percentLessReloadTimeMobile;
  Map<Weapons, double> percentLessReloadTimeMobileOutliers;

  Stock({
    required super.itemType,
    super.vaultedInMain,
    super.vaultedInMobile,
    required this.stockType,
    required this.compatibleWeapons,
    required this.percentLessAdsTime,
    required this.percentLessRaiseLowerTime,
    required this.percentLessAimDrift,
    required this.percentLessDeployHolsterTime,
    this.percentSlowerDriftSpeedSniper = 0,
    this.percentLessReloadTimeMobile = 0,
    this.percentLessReloadTimeMobileOutliers = const {},
  });
}
