import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:oneshot/enums/ability_type.dart';
import 'package:oneshot/enums/legend_type.dart';
import 'package:oneshot/extensions.dart';
import 'package:oneshot/models/legend.dart';

class LegendScreen extends StatelessWidget {
  const LegendScreen({super.key, required this.legend});

  final Legend legend;

  List<Widget> getAbilities() {
    return AbilityType.values
        .map((e) => AbilityCard(legend: legend, abilityType: e))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(legend.name),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          vertical: 25,
        ),
        children: [
          Text(
            legend.tagline,
            textAlign: TextAlign.center,
          ),
          Stack(
            children: [
              Image.asset(
                  'assets/images/legend/${legend.name.toLowerCaseStripped()}/profile.png'),
              Positioned(
                bottom: 10,
                right: 25,
                child: Tooltip(
                  triggerMode: TooltipTriggerMode.tap,
                  message: legend.legendType.name.capitalize(),
                  child: SvgPicture.asset(
                    'assets/images/legendType/${legend.legendType.name}.svg',
                  ),
                ),
              ),
            ],
          ),
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 10,
            children: [
              Chip(
                avatar: Icon(legend.inMainGame ? Icons.check : Icons.close),
                label: const Text('Apex'),
              ),
              Chip(
                avatar: Icon(legend.inMobileGame ? Icons.check : Icons.close),
                label: const Text('Apex Mobile'),
              )
            ],
          ),
          ListTile(
            title: Text('Full Name'),
            trailing: Text(legend.fullName),
          ),
          ListTile(
            title: Text('Gender'),
            trailing: Text(
              legend.gender.name.capitalize(),
            ),
          ),
          ListTile(
            title: Text('Homeworld'),
            trailing: Text(
              legend.homeworld.capitalize(),
            ),
          ),
          ListTile(
            title: Text('Voice Actor'),
            trailing: Text(legend.voiceActor),
          ),
          // ListTile(
          //   title: Text('Legend Type'),
          //   trailing: Text(
          //     legend.legendType.name.capitalize(),
          //   ),
          // ),
          ...getAbilities()
        ],
      ),
    );
  }
}

class AbilityCard extends StatelessWidget {
  const AbilityCard({
    Key? key,
    required this.legend,
    required this.abilityType,
  }) : super(key: key);

  final Legend legend;
  final AbilityType abilityType;

  @override
  Widget build(BuildContext context) {
    String svgName =
        'assets/images/legend/${legend.name.toLowerCaseStripped()}/${abilityType.name.toLowerCaseStripped()}.svg';
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          15,
        ),
        color: Colors.grey.shade300,
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            svgName,
            width: 50,
          ),
          SizedBox(
            width: 24,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      legend.abilities[abilityType]!.name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(abilityType.name.capitalize())
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  legend.abilities[abilityType]!.description,
                  softWrap: true,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
