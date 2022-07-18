import 'package:oneshot/enums/item_type.dart';
import 'package:oneshot/enums/weapons.dart';
import 'package:oneshot/models/attachment.dart';

class HopUp extends Attachment {
  String name;
  String effect;
  ItemType itemType;
  List<Weapons> compatibleMainWeapons;
  List<Weapons> compatibleMobileWeapons;

  HopUp(
      {required this.name,
      required this.effect,
      required this.itemType,
      this.compatibleMainWeapons = const [],
      this.compatibleMobileWeapons = const [],
      super.vaultedInMain,
      super.valuedInMobile});
}
