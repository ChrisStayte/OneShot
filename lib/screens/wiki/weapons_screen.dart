import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:oneshot/enums/legends.dart';
import 'package:oneshot/enums/weapons.dart';
import 'package:oneshot/models/legend.dart';
import 'package:oneshot/models/weapon.dart';
import 'package:oneshot/providers/legends_provider.dart';
import 'package:oneshot/providers/weapons_provider.dart';
import 'package:provider/provider.dart';

class WeaponsScreen extends StatelessWidget {
  const WeaponsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weapons'),
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: context.read<LegendsProvider>().legends.length,
        itemBuilder: (BuildContext context, int index) {
          Weapons weaponKey =
              context.read<WeaponsProvider>().weapons.keys.toList()[index];
          Weapon weapon = context.read<WeaponsProvider>().weapons[weaponKey]!;
          return ListTile(
            title: Text(weapon.name),
            onTap: () => Navigator.pushNamed(
              context,
              '/weapon',
              arguments: weaponKey,
            ),
          );
        },
      ),
    );
  }
}
