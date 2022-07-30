import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:oneshot/models/player.dart';

class PlayersProvider extends ChangeNotifier {
  static const String BoxName = 'players';
  final Box box = Hive.box<Player>(BoxName);

  List<Player> _players = [];
  UnmodifiableListView<Player> get players => UnmodifiableListView(_players);

  PlayersProvider() {
    getPlayers();
  }

  getPlayers() {
    _players = box.values.toList() as List<Player>;
    notifyListeners();
  }

  createPlayer(Player player) async {
    box.add(player);
    _players.add(player);
    notifyListeners();
  }

  updatePlayer(Player player) async {
    player.save();
    notifyListeners();
  }

  deletePlayer(Player player) async {
    player.delete();
    _players.remove(player);
    notifyListeners();
  }
}
