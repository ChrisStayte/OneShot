import 'package:flutter/material.dart';
import 'package:oneshot/models/player.dart';
import 'package:oneshot/providers/players_provider.dart';
import 'package:oneshot/screens/search/player_screen.dart';
import 'package:oneshot/screens/search/search_screen.dart';
import 'package:provider/provider.dart';

class SearchRoot extends StatelessWidget {
  const SearchRoot({super.key, required this.navigatorKey});

  final Key navigatorKey;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => PlayersProvider(),
          lazy: false,
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
                  return const SearchScreen();
                case '/player':
                  Player player = settings.arguments as Player;
                  return PlayerScreen(player: player);
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
