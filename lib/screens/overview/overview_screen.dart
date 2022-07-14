import 'package:flutter/material.dart';

class OverviewScreen extends StatelessWidget {
  const OverviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: ListView(
        children: [
          Text(
            'Welcome to One Shot, the Unofficial Apex Companion App',
            style: Theme.of(context).textTheme.headline4,
          )
        ],
      ),
    );
  }
}
