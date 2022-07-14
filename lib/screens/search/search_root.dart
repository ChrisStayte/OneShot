import 'package:flutter/material.dart';
import 'package:oneshot/screens/search/search_screen.dart';

class SearchRoot extends StatelessWidget {
  const SearchRoot({super.key, required this.navigatorKey});

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
                return const SearchScreen();
              default:
                throw Exception('Invalid route: ${settings.name}');
            }
          },
        );
      },
    );
  }
}
