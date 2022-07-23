import 'package:flutter/material.dart';
import 'package:oneshot/enums/weapons.dart';
import 'package:oneshot/models/legend.dart';
import 'package:oneshot/models/weapon.dart';
import 'package:oneshot/providers/attachments_provider.dart';
import 'package:oneshot/providers/legends_provider.dart';
import 'package:oneshot/providers/weapons_provider.dart';
import 'package:oneshot/screens/wiki/legend_screen.dart';
import 'package:oneshot/screens/wiki/legends_screen.dart';
import 'package:oneshot/screens/wiki/weapon_screen.dart';
import 'package:oneshot/screens/wiki/weapons_screen.dart';
import 'package:oneshot/screens/wiki/wiki_screen.dart';
import 'package:provider/provider.dart';

class WikiRoot extends StatelessWidget {
  const WikiRoot({super.key, required this.navigatorKey});

  final Key navigatorKey;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<LegendsProvider>(
          create: (_) => LegendsProvider(),
        ),
        Provider<AttachmentsProvider>(
          create: (_) => AttachmentsProvider(),
        ),
        Provider<WeaponsProvider>(
          create: (_) => WeaponsProvider(),
        )
      ],
      child: Navigator(
        key: navigatorKey,
        initialRoute: '/',
        onGenerateRoute: (RouteSettings settings) {
          return MaterialPageRoute(
            settings: settings,
            builder: (BuildContext context) {
              switch (settings.name) {
                case '/':
                  return WikiScreen();
                case '/legends':
                  return LegendsScreen();
                case '/legend':
                  String legendName = settings.arguments as String;
                  Legend? legend =
                      context.read<LegendsProvider>().legendByName(legendName);

                  if (legend != null) {
                    return LegendScreen(legend: legend);
                  } else {
                    throw Exception('Legend not found: $legendName');
                  }
                case '/weapons':
                  return WeaponsScreen();
                case '/weapon':
                  Weapons weaponKey = settings.arguments as Weapons;
                  Weapon? weapon =
                      context.read<WeaponsProvider>().weapons[weaponKey];
                  if (weapon != null) {
                    return WeaponScreen(
                      weapon: weapon,
                      weaponKey: weaponKey,
                    );
                  } else {
                    throw Exception(
                        'Weapon not found: ${weaponKey.toString()}');
                  }

                default:
                  throw Exception('Invalid route: ${settings.name}');
              }
            },
          );
        },
      ),
    );
  }
}
