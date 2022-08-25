import 'package:oneshot/enums/ammo_type.dart';
import 'package:oneshot/enums/fire_modes.dart';
import 'package:oneshot/enums/item_type.dart';
import 'package:oneshot/enums/opticrange.dart';
import 'package:oneshot/enums/weapon_type.dart';

class Weapon {
  String name;
  List<AmmoType> ammoTypes;
  int bodyDamage;
  int headDamage;
  int legDamage;
  Map<FireModes, int> rateOfFire;
  Map<FireModes, int> damagePerSecond;
  List<FireModes> firemode;
  Map<ItemType, int> magazineSizes;
  Map<ItemType, double> fullReloadTimesInSeconds;
  Map<ItemType, double> tacReloadTimesInSeconds;
  WeaponType weaponType;
  bool isMythic;

  Weapon({
    required this.name,
    required this.ammoTypes,
    required this.bodyDamage,
    required this.headDamage,
    required this.legDamage,
    required this.rateOfFire,
    required this.damagePerSecond,
    required this.weaponType,
    required this.firemode,
    this.isMythic = false,
    this.magazineSizes = const {},
    this.fullReloadTimesInSeconds = const {},
    this.tacReloadTimesInSeconds = const {},
  });
}
