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
        actions: [
          IconButton(
              onPressed: () async {
                await showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('Info'),
                        content: Text(
                            'The content from the app, or parts of it, comes from Apex Legends or from websites created and owned by Electronic Arts Inc. or Respawn Entertainment, who hold the copyright of Apex Legends. All trademarks and registered trademarks present in the file are proprietary to Electronic Arts Inc.. The use of images to illustrate articles concerning the subject of the image in question is believed to qualify as fair use under United States copyright law, as such display does not significantly impede the right of the copyright holder to sell the copyrighted material.'),
                      );
                    });
              },
              icon: Icon(Icons.info))
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                WikiMainCategoryCard(
                  name: 'Legends',
                  assetPath: 'assets/images/logo/legends.webp',
                  navigation: () => Navigator.pushNamed(context, '/legends'),
                  imageBoxFit: BoxFit.cover,
                  imageRepeat: ImageRepeat.noRepeat,
                ),
                WikiMainCategoryCard(
                  assetPath: 'assets/images/logo/weapons.png',
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
