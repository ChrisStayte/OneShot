import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';
import 'package:oneshot/models/player.dart';
import 'package:oneshot/providers/players_provider.dart';
import 'package:provider/provider.dart';

class PlayerScreen extends StatefulWidget {
  const PlayerScreen({super.key, required this.player});

  final Player player;

  @override
  State<PlayerScreen> createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.player.name),
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () => setState(() {
                    widget.player.favorite = !widget.player.favorite;
                    context.read<PlayersProvider>().updatePlayer(widget.player);
                  }),
              icon: Icon(
                  widget.player.favorite ? Icons.star : Icons.star_outline))
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        children: [
          Text(
            'Last Updated ${DateFormat('yyyy-MM-dd hh:mm a').format(widget.player.lastFetched)}',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.labelSmall,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Text(
              'Overview',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 90,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade700,
                    borderRadius: BorderRadius.circular(
                      14,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Level',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        widget.player.level.toString(),
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: LinearProgressIndicator(
                          value:
                              (widget.player.toNextLevelPercent?.toDouble() ??
                                      0.0) /
                                  100,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Container(
                  height: 90,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade700,
                    borderRadius: BorderRadius.circular(
                      14,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Kills',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        widget.player.kills.toString(),
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          Chip(label: Text('More info coming... gotta develop it')),
          SizedBox(
            height: 25,
          ),
          // TextButton(onPressed: () {}, child: Text('Refresh data'))
        ],
      ),
    );
  }
}
