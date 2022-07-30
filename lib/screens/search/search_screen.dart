import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:oneshot/api.dart';
import 'package:oneshot/enums/platform.dart';
import 'package:oneshot/extensions.dart';
import 'package:oneshot/models/player.dart';
import 'package:oneshot/providers/legends_provider.dart';
import 'package:oneshot/providers/players_provider.dart';
import 'package:oneshot/screens/search/components/platform_button.dart';
import 'package:provider/provider.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController _controller = TextEditingController();
  Platform _selectedPlatform = Platform.origin;
  bool _isSearching = false;
  int _platform = 0;
  late SnackBar _snackBar;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: AppBar(
            title: Text('Search Player Stats'),
            elevation: 0,
            actions: [
              IconButton(
                  onPressed: () async {
                    await showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('Info'),
                            content: Text(
                                'The content from the app, or parts of it, comes from Apex Legends or from websites created and owned by Electronic Arts Inc. or Respawn Entertainment, who hold the copyright of Apex Legends. All trademarks and registered trademarks present in the file are proprietary to Electronic Arts Inc.. The use of images to illustrate articles concerning the subject of the image in question is believed to qualify as fair use under United States copyright law, as such display does not significantly impede the right of the copyright holder to sell the copyrighted material.'),
                          );
                        });
                  },
                  icon: Icon(Icons.info))
            ],
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 25,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: Platform.values
                      .map(
                        (platform) => PlatformButton(
                          selectedPlatform: _selectedPlatform,
                          givenPlatform: platform,
                          selectThisPlatform: () => setState(
                            () => _selectedPlatform = platform,
                          ),
                        ),
                      )
                      .toList(),
                ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: TextField(
                    autocorrect: false,
                    controller: _controller,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusColor: Colors.black,
                      iconColor: Colors.black,
                      filled: true,
                      hintText: 'Gamertag',
                      suffixIcon: IconButton(
                        icon: Icon(
                          Icons.search,
                        ),
                        onPressed: () => _searchForPlayer(context),
                      ),
                    ),
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 38.0),
                //   child: TextButton(
                //     onPressed: () {},
                //     child: Text(
                //       'Search',
                //       style: TextStyle(
                //         color: Colors.white,
                //       ),
                //     ),
                //     style: TextButton.styleFrom(
                //       backgroundColor: Colors.grey.shade800,
                //     ),
                //   ),
                // ),
                SizedBox(
                  height: 15,
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: context.watch<PlayersProvider>().players.length,
                    itemBuilder: (context, index) {
                      Player player =
                          context.read<PlayersProvider>().players[index];
                      return Dismissible(
                        direction: DismissDirection.endToStart,
                        background: Container(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          alignment: Alignment.centerRight,
                          color: Colors.red,
                          child: Text('Delete',
                              style: TextStyle(color: Colors.white)),
                        ),
                        key: Key(player.key.toString()),
                        onDismissed: (direction) {
                          if (direction == DismissDirection.endToStart) {
                            context
                                .read<PlayersProvider>()
                                .deletePlayer(player);
                          }
                        },
                        child: ListTile(
                          onTap: () => Navigator.pushNamed(context, '/player',
                              arguments: player),
                          title: Text(player.name),
                          leading: SvgPicture.asset(
                            'assets/images/platform/${player.platform.name.toLowerCase()}.svg',
                            width: 25,
                            color: Colors.black,
                          ),
                          trailing: IconButton(
                            icon: Icon(
                              player.favorite ? Icons.star : Icons.star_border,
                              color: player.favorite
                                  ? Colors.yellow.shade800
                                  : Colors.grey.shade700,
                            ),
                            onPressed: () {
                              player.favorite = !player.favorite;
                              context
                                  .read<PlayersProvider>()
                                  .updatePlayer(player);
                            },
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Chip(
                  label: Text(
                    'Data provided by ApexLegendsApi.com',
                    style: Theme.of(context).textTheme.labelSmall,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
        Visibility(
          visible: _isSearching,
          child: Opacity(
            opacity: .8,
            child: ModalBarrier(
              dismissible: false,
              color: Colors.black,
            ),
          ),
        ),
        Visibility(
          visible: _isSearching,
          child: Center(
            child: CircularProgressIndicator(),
          ),
        )
      ],
    );
  }

  void _searchForPlayer(BuildContext context) async {
    if (_isSearching) {
      return;
    }

    String searchText = _controller.text.trim();

    if (searchText.isEmpty) {
      print('empty box');
      return;
    }

    Player? playerSearch = context
        .read<PlayersProvider>()
        .players
        .firstWhereOrNull((element) =>
            element.platform == _selectedPlatform &&
            element.name.toLowerCaseStripped().trim() ==
                searchText.toLowerCaseStripped().trim());

    if (playerSearch != null) {
      Navigator.pushNamed(context, '/player', arguments: playerSearch);
      return;
    }

    setState(() {
      _isSearching = true;
    });

    try {
      await http
          .get(
        Uri.parse(
          API.ApexLegendsAPIDotCom.getPlayerUrl(searchText, _selectedPlatform),
        ),
      )
          .then(
        (request) {
          if (request.statusCode == 200) {
            Map<String, dynamic> bodyDecoded = json.decode(request.body);
            if (bodyDecoded['global'] != null) {
              Player player = Player.fromApi(json.decode(request.body));
              print('Found Player: ${bodyDecoded['global']['uid']}');
              context.read<PlayersProvider>().createPlayer(player);
              Navigator.pushNamed(context, '/player', arguments: player);
            } else {
              _snackBar =
                  SnackBar(content: Text('No Stats Found: $searchText'));
              ScaffoldMessenger.of(context).showSnackBar(_snackBar);
            }
          } else {
            _snackBar =
                SnackBar(content: Text('Player Not Found: $searchText'));
            ScaffoldMessenger.of(context).showSnackBar(_snackBar);
          }
        },
      );
    } catch (error) {
      print(error.toString());

      _snackBar = SnackBar(content: Text('Error'));
      ScaffoldMessenger.of(context).showSnackBar(_snackBar);
    }

    setState(() {
      _isSearching = false;
    });
  }
}
