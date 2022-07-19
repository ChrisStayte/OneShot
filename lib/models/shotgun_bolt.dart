import 'package:oneshot/enums/weapons.dart';
import 'package:oneshot/models/attachment.dart';

class ShotgunBolt extends Attachment {
  Map<Weapons, double> higherFireRage;
  Map<Weapons, double> lessRechamberTimer;

  ShotgunBolt({
    required super.itemType,
    required this.higherFireRage,
    required this.lessRechamberTimer,
  });
}
