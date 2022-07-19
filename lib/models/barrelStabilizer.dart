import 'package:oneshot/enums/weapons.dart';
import 'package:oneshot/models/attachment.dart';

class BarrelStabilizer extends Attachment {
  List<Weapons> compatibleWeapons;
  int? percentRecoil;
  int? percentPitchRandomness;
  int? percentYawRandomness;
  Map<Weapons, int> percentLessRecoilOutliers;
  Map<Weapons, int> percentLessPitchRandomnessOutliers;
  Map<Weapons, int> percentLessYawRandomnessOutliers;
  bool flashHider;
  BarrelStabilizer({
    required super.itemType,
    super.vaultedInMain,
    super.vaultedInMobile,
    required this.compatibleWeapons,
    this.percentRecoil,
    this.percentPitchRandomness,
    this.percentYawRandomness,
    this.percentLessRecoilOutliers = const {},
    this.percentLessPitchRandomnessOutliers = const {},
    this.percentLessYawRandomnessOutliers = const {},
    this.flashHider = false,
  });
}
