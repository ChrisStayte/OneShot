import 'package:flutter/material.dart';
import 'package:oneshot/screens/overview/overview_screen.dart';

class OverviewRoot extends StatelessWidget {
  const OverviewRoot({super.key, required this.navigatorKey});

  final Key navigatorKey;

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      initialRoute: '/',
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) {
            switch (settings.name) {
              case '/':
                return const OverviewScreen();
              default:
                throw Exception('Invalid route: ${settings.name}');
            }
          },
        );
      },
    );
  }
}
