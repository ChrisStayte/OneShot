import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:oneshot/enums/legends.dart';
import 'package:oneshot/extensions.dart';
import 'package:oneshot/models/legend.dart';
import 'package:oneshot/providers/legends_provider.dart';
import 'package:provider/provider.dart';

class WikiScreen extends StatelessWidget {
  const WikiScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          title: Text(
            'One Shot Wiki',
          )),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          ListTile(
            title: Text(
              'Legends',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: context.read<LegendsProvider>().legends.length,
              itemBuilder: (BuildContext context, int index) {
                Legends legendKey = context
                    .read<LegendsProvider>()
                    .legends
                    .keys
                    .toList()[index];
                Legend legend =
                    context.read<LegendsProvider>().legends[legendKey]!;
                return LegendCard(legend: legend);
              },
            ),
          ),
          ListTile(
            title: Text(
              'Weapons',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
            ),
          ),
          ListTile(
            title: Text(
              'Gear',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
            ),
          ),
        ]),
      ),
    );
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
