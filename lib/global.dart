import 'package:flutter/material.dart';
import 'package:oneshot/enums/ammo_type.dart';
import 'package:oneshot/enums/item_type.dart';
import 'package:oneshot/enums/legends.dart';

class Global {
  static final colors = _Colors();
}

class _Colors {
  Map<Legends, Color> legendColor = {
    Legends.ash: Colors.red,
  };

  Map<ItemType, Color> itemColors = {
    ItemType.common: Color(0xFFA8A8A8),
    ItemType.rare: Color(0xFF52A8D6),
    ItemType.epic: Color(0xFFB237C7),
    ItemType.legendary: Color(0xFFCEAD21),
    ItemType.mythic: Color(0xFFFF4E1E)
  };
}
