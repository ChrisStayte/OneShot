import 'package:flutter/material.dart';
import 'package:oneshot/enums/ammo_type.dart';
import 'package:oneshot/enums/item_type.dart';
import 'package:oneshot/enums/opticrange.dart';
import 'package:oneshot/enums/weapon_type.dart';
import 'package:oneshot/enums/weapons.dart';
import 'package:oneshot/models/hopup.dart';
import 'package:oneshot/models/weapon.dart';

class WeaponsProvider extends ChangeNotifier {
  Map<Weapons, Weapon> weapons = {
    Weapons.alternator: Weapon(
      name: 'R-99 SMG',
      ammo: AmmoType.light,
      bodyDamage: 16,
      damagePerSecond: 160,
      headDamage: 24,
      legDamage: 13,
      rateOfFire: 600,
      weaponType: WeaponType.smg,
      magazineSizes: {
        ItemType.nothing: 19,
        ItemType.common: 22,
        ItemType.rare: 25,
        ItemType.epic: 27,
        ItemType.legendary: 27
      },
      tacReloadTimesInSeconds: {
        ItemType.nothing: 1.9,
        ItemType.common: 1.84,
        ItemType.rare: 1.77,
        ItemType.epic: 1.71,
        ItemType.legendary: 1.71
      },
      fullReloadTimesInSeconds: {
        ItemType.nothing: 2.23,
        ItemType.common: 2.16,
        ItemType.rare: 2.08,
        ItemType.epic: 2.01,
        ItemType.legendary: 2.01,
      },
    ),
    Weapons.prowler: Weapon(
      name: 'Prolwer Burst PDW',
      ammo: AmmoType.heavy,
      weaponType: WeaponType.smg,
      bodyDamage: 14,
      headDamage: 21,
      legDamage: 11,
      damagePerSecond: 167,
      rateOfFire: 666,
      magazineSizes: {
        ItemType.nothing: 20,
        ItemType.common: 25,
        ItemType.rare: 30,
        ItemType.epic: 35,
        ItemType.legendary: 35,
      },
    ),
  };
}
