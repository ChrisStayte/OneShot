import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:oneshot/enums/platform.dart';
import 'package:oneshot/enums/season.dart';
import 'package:oneshot/models/player.dart';
import 'package:oneshot/providers/players_provider.dart';
import 'package:oneshot/screens/homescreen.dart';

void main() async {
  Hive.registerAdapter<Player>(PlayerAdapter());
  Hive.registerAdapter<Platform>(PlatformAdapter());
  Hive.registerAdapter<Season>(SeasonAdapter());

  await Hive.initFlutter();
  await Hive.openBox<Player>(PlayersProvider.BoxName);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'One Shot',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomeScreen(),
    );
  }
}
