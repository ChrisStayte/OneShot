import 'package:flutter/material.dart';
import 'package:oneshot/enums/legends.dart';
import 'package:oneshot/models/legend.dart';
import 'package:oneshot/providers/legends_provider.dart';
import 'package:provider/provider.dart';

class LegendsScreen extends StatelessWidget {
  const LegendsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Legends'),
        elevation: 0,
      ),
      body: ListView.builder(
          itemCount: context.read<LegendsProvider>().legends.length,
          itemBuilder: (BuildContext context, int index) {
            Legends legendKey =
                context.read<LegendsProvider>().legends.keys.toList()[index];
            Legend legend = context.read<LegendsProvider>().legends[legendKey]!;
            //   return ListTile(
            //     title: Text(legend.name),
            //     onTap: () => Navigator.pushNamed(
            //       context,
            //       '/legend',
            //       arguments: legendKey.name,
            //     ),
            //   );
            // },
            return Container(
              child: Column(
                children: [Text(legend.name)],
              ),
            );
          }),
    );
  }
}
