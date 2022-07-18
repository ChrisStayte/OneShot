import 'package:oneshot/enums/OpticRange.dart';
import 'package:oneshot/enums/item_type.dart';
import 'package:oneshot/enums/weapons.dart';
import 'package:oneshot/models/attachment.dart';

class Optic extends Attachment {
  String name;
  OpticRange range;
  ItemType itemType;
  List<Weapons> compatibleWeapons;

  Optic({
    required this.name,
    required this.range,
    required this.itemType,
    required this.compatibleWeapons,
  });
}
