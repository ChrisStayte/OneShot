import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:oneshot/enums/legends.dart';
import 'package:oneshot/models/legend.dart';
import 'package:oneshot/providers/legends_provider.dart';
import 'package:provider/provider.dart';

class WikiScreen extends StatelessWidget {
  const WikiScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'One Shot Wiki',
      )),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Legends',
            style: Theme.of(context).textTheme.titleLarge,
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
                return GestureDetector(
                  onTap: () => Navigator.pushNamed(context, '/legend',
                      arguments: legend.name),
                  child: Container(
                    margin: EdgeInsets.all(10),
                    color: Colors.red,
                    width: 80,
                    child: Center(
                      child: Text(
                        legend.name,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Text(
            'Weapons',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
            ),
          ),
          Text(
            'Gear',
            style: Theme.of(context).textTheme.titleLarge,
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
