import 'package:oneshot/enums/ammo_type.dart';

class Weapon {
  String name;
  AmmoType ammo;
  int bodyDamage;
  int headDamage;
  int legDamage;
  int rateOfFire;
  int damagePerSecond;

  Weapon({
    required this.name,
    required this.ammo,
    required this.bodyDamage,
    required this.headDamage,
    required this.legDamage,
    required this.rateOfFire,
    required this.damagePerSecond,
  });
}
