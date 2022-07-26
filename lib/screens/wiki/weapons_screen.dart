import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:oneshot/enums/legends.dart';
import 'package:oneshot/enums/weapons.dart';
import 'package:oneshot/global.dart';
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
      // body: ListView.builder(
      //   itemCount: context.read<LegendsProvider>().legends.length,
      //   itemBuilder: (BuildContext context, int index) {
      //     Weapons weaponKey =
      //         context.read<WeaponsProvider>().weapons.keys.toList()[index];
      //     Weapon weapon = context.read<WeaponsProvider>().weapons[weaponKey]!;
      //     return ListTile(
      //       title: Text(weapon.name),
      //       onTap: () => Navigator.pushNamed(
      //         context,
      //         '/weapon',
      //         arguments: weaponKey,
      //       ),
      //     );
      //   },
      // ),
      body: GridView.builder(
        padding: EdgeInsets.symmetric(
          vertical: 25,
          horizontal: 10,
        ),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          mainAxisExtent: 120,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemCount: context.read<WeaponsProvider>().weapons.length,
        itemBuilder: (BuildContext context, int index) {
          Weapons weaponKey =
              context.read<WeaponsProvider>().weapons.keys.toList()[index];
          //Weapon weapon = context.read<WeaponsProvider>().weapons[weaponKey]!;
          // Sort Alphabetically
          Weapon weapon =
              (context.read<WeaponsProvider>().weapons.entries.toList()
                    ..sort(
                      (a, b) => a.key.name.compareTo(b.key.name),
                    ))[index]
                  .value;

          return GestureDetector(
            onTap: () => Navigator.pushNamed(
              context,
              '/weapon',
              arguments: weaponKey,
            ),
            child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(
                  15,
                ),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: SvgPicture.asset(
                          'assets/images/weapon/${weaponKey.name.toLowerCase()}_icon.svg',
                          width: 150,
                        ),
                      ),
                      AutoSizeText(
                        weapon.name,
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
