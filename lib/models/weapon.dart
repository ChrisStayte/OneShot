import 'package:oneshot/enums/ammo_type.dart';
import 'package:oneshot/enums/item_type.dart';
import 'package:oneshot/enums/opticrange.dart';
import 'package:oneshot/enums/weapon_type.dart';

class Weapon {
  String name;
  AmmoType ammo;
  int bodyDamage;
  int headDamage;
  int legDamage;
  int rateOfFire;
  int damagePerSecond;
  Map<ItemType, int> magazineSizes;
  Map<ItemType, double> fullReloadTimesInSeconds;
  Map<ItemType, double> tacReloadTimesInSeconds;
  WeaponType weaponType;

  Weapon({
    required this.name,
    required this.ammo,
    required this.bodyDamage,
    required this.headDamage,
    required this.legDamage,
    required this.rateOfFire,
    required this.damagePerSecond,
    required this.weaponType,
    this.magazineSizes = const {},
    this.fullReloadTimesInSeconds = const {},
    this.tacReloadTimesInSeconds = const {},
  });
}
