import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:oneshot/enums/legends.dart';
import 'package:oneshot/enums/weapons.dart';
import 'package:oneshot/extensions.dart';
import 'package:oneshot/models/legend.dart';
import 'package:oneshot/models/weapon.dart';
import 'package:oneshot/providers/legends_provider.dart';
import 'package:oneshot/providers/weapons_provider.dart';
import 'package:oneshot/screens/wiki/components/wiki_main_category_card.dart';
import 'package:provider/provider.dart';

class WikiScreen extends StatelessWidget {
  const WikiScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('One Shot Wiki'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                WikiMainCategoryCard(
                  name: 'Legends',
                  assetPath: 'assets/images/logos/legends.webp',
                  navigation: () => Navigator.pushNamed(context, '/legends'),
                  imageBoxFit: BoxFit.cover,
                  imageRepeat: ImageRepeat.noRepeat,
                ),
                WikiMainCategoryCard(
                  assetPath: 'assets/images/logos/weapons.png',
                  name: 'Weapons',
                  imageBoxFit: BoxFit.contain,
                  navigation: () => Navigator.pushNamed(context, '/weapons'),
                  imageRepeat: ImageRepeat.repeat,
                )
              ],
            ),
            Spacer(),
            Chip(
              label: Text(
                'This will grow as I have time',
                style: Theme.of(context).textTheme.labelSmall,
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
