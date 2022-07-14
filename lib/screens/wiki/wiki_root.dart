import 'package:flutter/material.dart';
import 'package:oneshot/models/legend.dart';
import 'package:oneshot/providers/legends_provider.dart';
import 'package:oneshot/screens/wiki/legend_screen.dart';
import 'package:oneshot/screens/wiki/wiki_screen.dart';
import 'package:provider/provider.dart';

class WikiRoot extends StatelessWidget {
  const WikiRoot({super.key, required this.navigatorKey});

  final Key navigatorKey;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<LegendsProvider>(
          create: (_) => LegendsProvider(),
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
                case '/legend':
                  String legendName = settings.arguments as String;
                  Legend? legend =
                      context.read<LegendsProvider>().legendByName(legendName);

                  if (legend != null) {
                    return LegendScreen(legend: legend);
                  } else {
                    throw Exception('Legend not found: $legendName');
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
