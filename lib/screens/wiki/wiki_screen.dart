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
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      height: 250,
                      child: GestureDetector(
                        onTap: () => Navigator.pushNamed(context, '/legends'),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(
                              25,
                            ),
                          ),
                          child: Stack(children: [
                            Positioned(
                              child: Text(
                                'Legends',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              bottom: 15,
                              right: 15,
                            )
                          ]),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      height: 250,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(
                            25,
                          ),
                        ),
                        child: Stack(children: [
                          Positioned(
                            child: Text(
                              'Weapons',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            bottom: 15,
                            right: 15,
                          )
                        ]),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      height: 250,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(
                            25,
                          ),
                        ),
                        child: Stack(children: [
                          Positioned(
                            child: Text(
                              'Gear',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            bottom: 15,
                            right: 15,
                          )
                        ]),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      height: 250,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(
                            25,
                          ),
                        ),
                        child: Stack(children: [
                          Positioned(
                            child: Text(
                              'Maps',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            bottom: 15,
                            right: 15,
                          )
                        ]),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
    // return Scaffold(
    //   appBar: AppBar(
    //       elevation: 0,
    //       title: Text(
    //         'One Shot Wiki',
    //       )),
    //   body: Padding(
    //     padding: EdgeInsets.symmetric(vertical: 10),
    //     child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
    //       ListTile(
    //         title: Text(
    //           'Legends',
    //           style: Theme.of(context).textTheme.titleLarge,
    //         ),
    //       ),
    //       Expanded(
    //         child: ListView.builder(
    //           scrollDirection: Axis.horizontal,
    //           itemCount: context.read<LegendsProvider>().legends.length,
    //           itemBuilder: (BuildContext context, int index) {
    //             Legends legendKey = context
    //                 .read<LegendsProvider>()
    //                 .legends
    //                 .keys
    //                 .toList()[index];
    //             Legend legend =
    //                 context.read<LegendsProvider>().legends[legendKey]!;
    //             return LegendCard(legend: legend);
    //           },
    //         ),
    //       ),
    //       ListTile(
    //         title: Text(
    //           'Weapons',
    //           style: Theme.of(context).textTheme.titleLarge,
    //         ),
    //       ),
    //       Expanded(
    //         child: ListView.builder(
    //           scrollDirection: Axis.horizontal,
    //           itemCount: context.read<WeaponsProvider>().weapons.length,
    //           itemBuilder: (BuildContext context, int index) {
    //             Weapons weaponKey = context
    //                 .read<WeaponsProvider>()
    //                 .weapons
    //                 .keys
    //                 .toList()[index];
    //             Weapon weapon =
    //                 context.read<WeaponsProvider>().weapons[weaponKey]!;
    //             return Container(
    //               padding: EdgeInsets.all(5),
    //               decoration: BoxDecoration(
    //                 color: Colors.green.shade200,
    //                 borderRadius: BorderRadius.circular(
    //                   10,
    //                 ),
    //               ),
    //               margin: EdgeInsets.symmetric(
    //                 horizontal: 10,
    //               ),
    //               width: 100,
    //               child: Center(
    //                   child: Column(
    //                 mainAxisAlignment: MainAxisAlignment.center,
    //                 children: [
    //                   Image.asset(
    //                     'assets/images/weapon/${weaponKey.name}.webp',
    //                     height: 80,
    //                   ),
    //                   Text(weapon.name),
    //                 ],
    //               )),
    //             );
    //           },
    //         ),
    //       ),
    //       ListTile(
    //         title: Text(
    //           'Gear',
    //           style: Theme.of(context).textTheme.titleLarge,
    //         ),
    //       ),
    //       Expanded(
    //         child: ListView(
    //           scrollDirection: Axis.horizontal,
    //         ),
    //       ),
    //     ]),
    //   ),
    // );
  }
}

class LegendCard extends StatelessWidget {
  const LegendCard({
    super.key,
    required this.legend,
  });

  final Legend legend;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          Navigator.pushNamed(context, '/legend', arguments: legend.name),
      child: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: Colors.grey.shade400,
            borderRadius: BorderRadius.circular(18)),
        margin: EdgeInsets.symmetric(horizontal: 10),
        width: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/legend/${legend.name.toLowerCaseStripped()}/profile.png',
            ),
            AutoSizeText(
              legend.name,
              maxLines: 1,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
