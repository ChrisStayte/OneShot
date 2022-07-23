import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:oneshot/enums/weapon_type.dart';
import 'package:oneshot/enums/weapons.dart';
import 'package:oneshot/extensions.dart';
import 'package:oneshot/global.dart';
import 'package:oneshot/models/barrelStabilizer.dart';
import 'package:oneshot/models/optic.dart';
import 'package:oneshot/models/weapon.dart';
import 'package:oneshot/providers/attachments_provider.dart';
import 'package:provider/provider.dart';

class WeaponScreen extends StatelessWidget {
  const WeaponScreen(
      {super.key, required this.weaponKey, required this.weapon});

  final Weapons weaponKey;
  final Weapon weapon;

  String _weaponTypeName() {
    switch (weapon.weaponType) {
      case WeaponType.smg:
        return 'Sub Machine Gun';
        break;
      case WeaponType.lmg:
        return 'Light Machine Gun';
        break;
      case WeaponType.ar:
        return 'Assult Rifle';
        break;
    }
    return weapon.weaponType.name.capitalize();
  }

  List<BarrelStabilizer> _barrels(BuildContext context) {
    return context
        .read<AttachmentsProvider>()
        .barrelStabilizers
        .where((element) => element.compatibleWeapons.contains(weaponKey))
        .toList();
  }

  List<Optic> _optics(BuildContext context) {
    return context
        .read<AttachmentsProvider>()
        .optics
        .where((element) => element.compatibleWeapons.contains(weaponKey))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    List<BarrelStabilizer> barrels = _barrels(context);
    List<Optic> optics = _optics(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text(weapon.name),
        elevation: 0,
        actions: weapon.ammoTypes
            .map(
              (e) => Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: SvgPicture.asset(
                  weapon.isMythic
                      ? 'assets/images/ammoType/${e.name}_mythic.svg'
                      : 'assets/images/ammoType/${e.name}.svg',
                  width: 35,
                ),
              ),
            )
            .toList(),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          vertical: 25,
          horizontal: 10,
        ),
        children: [
          Image.asset(
            'assets/images/weapon/${weaponKey.name.toLowerCaseStripped()}.webp',
            height: 250,
          ),
          Row(
            children: [
              Text(
                _weaponTypeName(),
              ),
              Spacer(),
              ...weapon.firemode.map(
                (e) => Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: SvgPicture.asset(
                    'assets/images/fireMode/${e.name}.svg',
                    width: 35,
                  ),
                ),
              )
            ],
          ),
          Divider(
            thickness: 2,
          ),
          Text('Damage'),
          SizedBox(
            height: 60,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    width: 90,
                    padding: const EdgeInsets.all(
                      5,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            weapon.bodyDamage.toString(),
                          ),
                          Text(
                            'Body Damage',
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 90,
                    padding: const EdgeInsets.all(
                      5,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            weapon.headDamage.toString(),
                          ),
                          Text(
                            'Head Damage',
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 90,
                    padding: const EdgeInsets.all(
                      5,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            weapon.legDamage.toString(),
                          ),
                          Text(
                            'Leg Damage',
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          weapon.rateOfFire.values.length > 0
              ? Text('Rate Of Fire')
              : SizedBox(),
          Row(
            children: weapon.rateOfFire.keys
                .map(
                  (e) => Expanded(
                    child: Container(
                      width: 60,
                      height: 60,
                      padding: EdgeInsets.all(5),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(weapon.rateOfFire[e].toString()),
                            Text(
                              e.name.capitalize(),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
          weapon.damagePerSecond.values.length > 0
              ? Text('Damange Per Second')
              : SizedBox(),
          Row(
            children: weapon.damagePerSecond.keys
                .map(
                  (e) => Expanded(
                    child: Container(
                      width: 60,
                      height: 60,
                      padding: EdgeInsets.all(5),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(weapon.damagePerSecond[e].toString()),
                            Text(
                              e.name.capitalize(),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
          weapon.magazineSizes.values.length > 0
              ? Text('Magazine Sizes')
              : SizedBox(),
          Row(
            children: weapon.magazineSizes.keys
                .map(
                  (e) => Expanded(
                    child: Container(
                      width: 60,
                      height: 60,
                      padding: EdgeInsets.all(5),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Global.colors.itemColors[e] ?? Colors.grey,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Text(
                            weapon.magazineSizes[e].toString(),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
          weapon.tacReloadTimesInSeconds.values.length > 0
              ? Text('Tact Reload Times')
              : SizedBox(),
          Row(
            children: weapon.tacReloadTimesInSeconds.keys
                .map(
                  (e) => Expanded(
                    child: Container(
                      width: 60,
                      height: 60,
                      padding: EdgeInsets.all(5),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Global.colors.itemColors[e] ?? Colors.grey,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Text(
                            weapon.tacReloadTimesInSeconds[e].toString(),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
          weapon.tacReloadTimesInSeconds.values.length > 0
              ? Text('Full Reload Times')
              : SizedBox(),
          Row(
            children: weapon.fullReloadTimesInSeconds.keys
                .map(
                  (e) => Expanded(
                    child: Container(
                      width: 60,
                      height: 60,
                      padding: EdgeInsets.all(5),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Global.colors.itemColors[e] ?? Colors.grey,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Text(
                            weapon.fullReloadTimesInSeconds[e].toString(),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
                .toList(),
          ),
          optics.length > 0 ? Text('Optics') : SizedBox(),
          SizedBox(
            height: 65,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: optics
                  .map(
                    (optic) => Container(
                      padding: EdgeInsets.all(5),
                      width: 100,
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Global.colors.itemColors[optic.itemType] ??
                              Colors.grey,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: AutoSizeText(
                            optic.name,
                            maxLines: 2,
                          ),
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
