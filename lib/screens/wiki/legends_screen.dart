import 'package:flutter/material.dart';
import 'package:oneshot/enums/legends.dart';
import 'package:oneshot/extensions.dart';
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
      body: SafeArea(
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 250, mainAxisSpacing: 20
              // childAspectRatio: .8,
              ),
          // SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: context.read<LegendsProvider>().legends.length,
          itemBuilder: (BuildContext context, int index) {
            Legends legendKey =
                context.read<LegendsProvider>().legends.keys.toList()[index];
            Legend legend = context.read<LegendsProvider>().legends[legendKey]!;
            return GestureDetector(
              onTap: () => Navigator.pushNamed(
                context,
                '/legend',
                arguments: legendKey,
              ),
              child: Container(
                margin: EdgeInsets.all(0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Image.asset(
                        'assets/images/legend/${legend.name.toLowerCaseStripped()}/grid.png',
                      ),
                    ),
                    Text(
                      legend.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    Text(
                      legend.tagline,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 14,
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
