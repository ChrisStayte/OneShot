import 'package:oneshot/enums/item_type.dart';

abstract class Attachment {
  bool vaultedInMain;
  bool vaultedInMobile;
  ItemType itemType;

  Attachment({
    required this.itemType,
    this.vaultedInMain = false,
    this.vaultedInMobile = false,
  });
}
